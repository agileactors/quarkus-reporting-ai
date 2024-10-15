package com.agileactors.users.api;

import com.agileactors.users.domain.Order;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import java.util.List;

@Path("/api/orders")
public class OrdersApi {
  @GET
  @Produces({MediaType.APPLICATION_JSON})
  public List<Order> findAll() {
    return Order.findAll().list();
  }
}
