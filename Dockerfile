# Start with the official Java image from Docker Hub
FROM openjdk:11-jre-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the application JAR file into the container
COPY target/myapp.jar /app/myapp.jar

# Expose port 8080 for the container
EXPOSE 8080

# Set the command to run the application when the container starts
CMD ["java", "-jar", "/app/myapp.jar"]
