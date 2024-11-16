FROM maven:3.8.7-openjdk-18-slim

WORKDIR /app

COPY . .

RUN mvn clean package

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/target/helloworld-0.0.1-SNAPSHOT.jar"]