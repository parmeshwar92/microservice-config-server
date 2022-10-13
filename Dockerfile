#start with Base image containing java run time
FROM openjdk:8-slim as build

#Information about maintains the image
MAINTAINER localbank.com

#Add the application jar to the container
COPY target/microservice-config-server-0.0.1-SNAPSHOT.jar  microservice-config-server-0.0.1-SNAPSHOT.jar
#Execute the Application
ENTRYPOINT ["java","-jar","/microservice-config-server-0.0.1-SNAPSHOT.jar"]