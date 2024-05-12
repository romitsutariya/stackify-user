FROM amazoncorretto:21-alpine
WORKDIR /app
COPY build/libs/stackify-user-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "app.jar"]