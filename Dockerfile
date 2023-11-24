# Estágio 1: Construção
FROM ubuntu:latest AS build

RUN apt-get update
RUN apt-get install -y openjdk-11-jdk maven

WORKDIR /app
COPY . .

RUN mvn clean install

# Estágio 2: Imagem final
FROM openjdk:11-jdk-slim

WORKDIR /app
EXPOSE 8080

COPY --from=build /app/target/digital-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
