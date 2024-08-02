# Stage 1: Build the application
FROM maven:3.8.6-openjdk-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=builder /app/target/product-service.jar /app/product-service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/your-app-name.jar"]
