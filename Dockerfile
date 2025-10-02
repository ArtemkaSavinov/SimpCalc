# Этап сборки Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Копируем pom.xml и src
COPY pom.xml .
COPY src ./src

# Сборка проекта (тесты можно включить)
RUN mvn clean package -DskipTests

# Этап рантайм
FROM eclipse-temurin:17-jdk
WORKDIR /app

# Копируем jar из этапа сборки
COPY --from=build /app/target/calculator-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
