# Этап 1: сборка
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Сначала копируем только pom.xml (чтобы закэшировать зависимости)
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Теперь копируем исходники
COPY src ./src

# Собираем проект
RUN mvn clean package

# Этап 2: минимальный образ для запуска
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/calculator-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]