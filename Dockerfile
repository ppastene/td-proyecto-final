FROM openjdk:21-slim

WORKDIR /app

COPY /target/helloworld-0.0.1-SNAPSHOT.jar .

EXPOSE 9000

ENTRYPOINT ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]