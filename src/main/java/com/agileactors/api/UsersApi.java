package com.agileactors.api;

import com.agileactors.data.repository.DataRepository;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.QueryParam;
import jakarta.ws.rs.core.MediaType;

@Path("/api/users")
public class UsersApi {

  private final DataRepository dataRepository;

  public UsersApi(DataRepository dataRepository) {
    this.dataRepository = dataRepository;
  }

  @GET
  @Produces({MediaType.APPLICATION_JSON})
  public String findAll(@QueryParam("query") String query) {
    return dataRepository.findWithNaturalLanguage(query).toString();
  }
}
