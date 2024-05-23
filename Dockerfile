FROM openjdk
COPY target/*.jar /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/java-bh:v1.1.3-SNAPSHOT.jar"]
