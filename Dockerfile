#FROM openjdk
#COPY target/*.jar /
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/java-bh-SNAPSHOT.jar"]
#ENTRYPOINT ["java" "-jar" "/my-app-1.0-SNAPSHOT.jar"]
#/var/lib/jenkins/workspace/project/target/my-app-1.0-SNAPSHOT.jar

FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy your JAR file into the container
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Set the PATH environment variable
ENV PATH="$PATH:/usr/lib/jvm/java-11-openjdk-amd64/bin"

# Expose port 8080
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "my-app.jar"]
