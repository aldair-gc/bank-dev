# Use openjdk:21-jdk-alpine as the base image
FROM openjdk:21-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the application JAR file to the Docker image
COPY build/libs/bank-dev-0.0.1-SNAPSHOT.jar app.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
