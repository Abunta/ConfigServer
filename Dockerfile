FROM openjdk:11

ARG JAR_FILE=target/*.jar

#ENV EUREKA_SERVER_ADDRESS=http://host.docker.internal:8761/eureka

COPY ${JAR_FILE} configserver.jar

ENTRYPOINT ["java", "-jar", "/configserver.jar"]

EXPOSE 9296