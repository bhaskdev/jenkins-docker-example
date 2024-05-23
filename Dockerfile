FROM openjdk
COPY target/*.jar /
EXPOSE 8080
#ENTRYPOINT ["java","-jar","/java-bh-SNAPSHOT.jar"]
ENTRYPOINT ["java" "-jar" "/my-app-1.0-SNAPSHOT.jar"]
#/var/lib/jenkins/workspace/project/target/my-app-1.0-SNAPSHOT.jar
