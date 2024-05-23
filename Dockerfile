FROM openjdk
COPY target/*.jar /
EXPOSE 8080
ENTRYPOINT ["/bin/sh" "-c" "[\"java\" \"-jar\" \"/usr/app/gs-maven-0.1.0.jar\"]"]
