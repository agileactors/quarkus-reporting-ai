package com.agileactors.data.repository;

import com.agileactors.ai.SqlGeneratorService;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.persistence.EntityManager;
import java.util.List;
import java.util.UUID;
import java.util.stream.Stream;
import org.hibernate.exception.DataException;
import org.hibernate.exception.SQLGrammarException;

@ApplicationScoped
public class DataRepository {

  private final SqlGeneratorService sqlGeneratorService;
  private final EntityManager entityManager;

  public DataRepository(SqlGeneratorService sqlGeneratorService, EntityManager entityManager) {
    this.sqlGeneratorService = sqlGeneratorService;
    this.entityManager = entityManager;
  }

  public List findWithNaturalLanguage(String naturalLanguageQuery) {

    var memoryId = UUID.randomUUID();

    var nativeQueryPrompt = sqlGeneratorService.createSqlQueryFromNaturalLanguage(memoryId, naturalLanguageQuery);

    return getEntities(memoryId, nativeQueryPrompt)
        .toList();
  }

  private Stream<String> getEntities(UUID memoryId, String nativeQuery) {
    try {

      return entityManager
          .createNativeQuery(nativeQuery)
          .getResultStream();

    } catch (SQLGrammarException | DataException e) {
      var newNativeQuery = sqlGeneratorService.createSqlQueryFromNaturalLanguage(memoryId,
          "Last query failed with error: " + e.getMessage()
              + ". Correct the query. Do not explain, just return the corrected query.");
      return getEntities(memoryId, newNativeQuery);
    }
  }
}
