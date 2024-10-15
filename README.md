# AI Reporting Service with Quarkus and Ollama

This project is an AI-powered reporting service built with Quarkus and Ollama, designed for educational purposes. It demonstrates the integration of AI capabilities into a modern, cloud-native Java application.

## Overview

The service uses natural language processing to generate SQL queries based on user input, providing an intuitive interface for data retrieval. It also includes security features to protect sensitive information.

## Features

- Natural language to SQL query conversion
- User and Order management
- Security-aware context removal
- Integration with OpenAI and Ollama AI models

## Prerequisites

- Java 21
- Maven 3.8.6+
- Quarkus 3.15.1
- PostgreSQL database
- OpenAI API key (for GPT-4 model)
- Ollama (optional, for local AI model)

## Project Structure

The project consists of several key components:

1. User and Order domain models
2. UserRepository for data access
3. UsersApi for RESTful endpoints
4. SqlGeneratorService for AI-powered SQL generation
5. SecurityService for removing sensitive data

## Configuration

The project uses the following main configuration files:

```properties:src/main/resources/application.properties
startLine: 1
endLine: 36
```

## Running the Application

1. Set up your PostgreSQL database and update the connection details in `application.properties`.

2. Set your OpenAI API key as an environment variable:
   ```
   export QUARKUS_LANGCHAIN4J_OPENAI_API_KEY=your_api_key_here
   ```

3. Run the application in development mode:
   ```
   ./mvnw quarkus:dev
   ```

4. The application will be available at `http://localhost:8080`.

## API Usage

The main endpoint for querying data is:

```
GET /api/users?query=your_natural_language_query_here
```

Replace `your_natural_language_query_here` with your desired query in plain English.

## Security

The application includes a security layer that removes sensitive information from the query results. This is implemented in the `SecurityService` and `SecurityAwareContextRemovalServiceInterceptor`.

## Building for Production

To create a production build:

```
./mvnw package -Pnative
```

This will create a native executable optimized for your operating system.