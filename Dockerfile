# 1. 'FROM' pulls the Java 21 environment from Docker Hub
FROM eclipse-temurin:21-jre-jammy

# Inform Docker that the container listens on port 8080
EXPOSE 9090

# 2. Set the working directory inside the container
WORKDIR /kollu

# 3. Copy your JAR from your local target folder into the container
COPY target/jenkinsbuild-0.0.1-SNAPSHOT.jar /kollu

# 4. Run the application using the Java 21 binary provided by the 'FROM' tag
ENTRYPOINT ["java", "-jar", "jenkinsbuild-0.0.1-SNAPSHOT.jar"]