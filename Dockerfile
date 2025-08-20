FROM openjdk:24-jdk-slim

# Set the working directory inside the container.
WORKDIR /app

# Copy the compiled JAR file from the build output into the container
COPY build/libs/*.jar app.jar

# Tell Docker that the container will listen on port 8080.
EXPOSE 8080

# This is the command that will run when the container starts.
ENTRYPOINT ["java", "-jar", "app.jar"]
