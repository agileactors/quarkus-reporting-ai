package com.agileactors.users.data.repository;

import java.util.List;
import java.util.UUID;
import java.util.stream.Stream;

import org.hibernate.exception.DataException;
import org.hibernate.exception.SQLGrammarException;

import com.agileactors.users.ai.SqlGeneratorService;
import com.agileactors.users.domain.User;

import io.quarkus.hibernate.orm.panache.PanacheRepositoryBase;
import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UserRepository implements PanacheRepositoryBase<User, UUID> {

  private final SqlGeneratorService sqlGeneratorService;

  public UserRepository(SqlGeneratorService sqlGeneratorService) {
    this.sqlGeneratorService = sqlGeneratorService;
  }

  public List findWithNaturalLanguage(String naturalLanguageQuery) {

    var memoryId = UUID.randomUUID();

    var nativeQueryPrompt = sqlGeneratorService.createSqlQueryFromNaturalLanguage(memoryId, naturalLanguageQuery);

    return getEntities(memoryId, nativeQueryPrompt)
        .toList();
  }

  private Stream<String> getEntities(UUID memoryId, String nativeQuery) {
    try {

      return getEntityManager()
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
