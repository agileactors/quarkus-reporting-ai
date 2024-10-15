package com.agileactors.users.ai;

import jakarta.interceptor.AroundInvoke;
import jakarta.interceptor.Interceptor;
import jakarta.interceptor.InvocationContext;

@SecurityAwareContextRemovalService
@Interceptor
public class SecurityAwareContextRemovalServiceInterceptor {

  private final SecurityService securityService;

  public SecurityAwareContextRemovalServiceInterceptor(SecurityService securityService) {
    this.securityService = securityService;
  }

  @AroundInvoke
  public Object intercept(InvocationContext context) throws Exception {
    Object result = context.proceed();

    if (result instanceof String) {
      return securityService.removeSensitiveDataFromJson(result.toString());
    }

    return result;
  }
}

