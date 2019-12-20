FROM maven:3.6.3-jdk-8-slim AS build

WORKDIR /code

ADD pom.xml /code/pom.xml
ADD src /code/src
RUN ["mvn", "package", "-DskipTests=true"]

FROM java:8-jre

COPY --from=build /code/target/spring-petclinic-*.jar /

# expose http port
EXPOSE 8080
CMD ["java", "-Dspring.profiles.active=mysql", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]