# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/demo-0.0.1.jar /app/

# Expose the port that your Spring Boot application will run on
EXPOSE 8000

# Specify the command to run on container start
CMD ["java", "-jar", "demo-0.0.1.jar"]
