FROM openjdk:17.0.2-jdk-slim-buster
WORKDIR /app
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/jira-1.0.jar
COPY resources ./resources
ENTRYPOINT ["java","-jar","/app/jira-1.0.jar"]
