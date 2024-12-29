# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# Expose the port your app runs on
EXPOSE 9080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
