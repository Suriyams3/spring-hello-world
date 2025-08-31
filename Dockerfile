# Use an official OpenJDK 11 runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built WAR file into the container
COPY build/libs/spring-hello-world-*.war app.war

# Expose the port the app runs on
EXPOSE 8080

# Run the WAR file
ENTRYPOINT ["java", "-jar", "app.war"]
