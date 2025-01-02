# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the jar file from the target directory into the container
COPY target/argocd-0.0.1-SNAPSHOT.jar /app/argocd.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "argocd.jar"]

# Expose the application port
EXPOSE 8080
