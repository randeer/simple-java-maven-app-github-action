# Use an official Java runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host to the container
COPY target/my-app-1.0-SNAPSHOT.jar /app/app.jar

# Run the JAR file when the container starts
CMD ["java", "-jar", "app.jar"]
