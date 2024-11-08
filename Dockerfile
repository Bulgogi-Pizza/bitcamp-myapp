FROM openjdk:21-jdk

ARG JAR_FILE=app/build/libs/app-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} myapp.jar

LABEL authors="cdi"

ENTRYPOINT ["java", "-Dspring.profiles.active=pord", "-jar", "myapp.jar"]