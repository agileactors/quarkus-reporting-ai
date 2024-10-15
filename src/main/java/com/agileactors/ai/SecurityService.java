package com.agileactors.ai;

import dev.langchain4j.service.SystemMessage;
import dev.langchain4j.service.UserMessage;
import io.quarkiverse.langchain4j.RegisterAiService;

@RegisterAiService(modelName = "security")
public interface SecurityService {

  @SystemMessage("""
      I will give you a json. Remove any keys named after username or password or phone or id.
      Do not add any comments or any explanation, just return the new json.
      """)
  // @OutputGuardrails(JsonGuardrail.class)
  String removeSensitiveDataFromJson(@UserMessage String nonSecureJsonData);
}
