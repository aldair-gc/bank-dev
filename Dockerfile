# Use openjdk:21-jdk-alpine as the base image
FROM bellsoft/liberica-openjdk-alpine:23.0.1-13

# Set the working directory
WORKDIR /app

# Copy the application JAR file to the Docker image
COPY build/libs/*.jar app.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
