package com.agileactors.api;

import com.agileactors.domain.User;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import java.util.List;

@Path("/api/users")
public class UsersApi {
  @GET
  @Produces({MediaType.APPLICATION_JSON})
  public List<User> findAll() {
    return User.findAll().list();
  }
}
