package com.agileactors.users.api;

import com.agileactors.users.ai.SecurityAwareContextRemovalService;
import com.agileactors.users.data.repository.UserRepository;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.QueryParam;
import jakarta.ws.rs.core.MediaType;

@Path("/api/users")
public class UsersApi {

  private final UserRepository userRepository;

  public UsersApi(UserRepository userRepository) {
    this.userRepository = userRepository;
  }

  @GET
//  @SecurityAwareContextRemovalService
  @Produces({MediaType.APPLICATION_JSON})
  public String findAll(@QueryParam("query") String query) {
    return userRepository.findWithNaturalLanguage(query).toString();
  }
}
