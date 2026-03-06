# Stage 1: Build with Maven
FROM maven:3.6-jdk-8 AS build
WORKDIR /app
COPY pom.xml .
# Download dependencies first (cached layer)
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run with lightweight JRE
FROM openjdk:8-jre-slim
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Create upload directory for file uploads
RUN mkdir -p /app/static/upload

EXPOSE 8080
ENTRYPOINT ["java", "-Xmx256m", "-jar", "app.jar", "--spring.profiles.active=prod"]
