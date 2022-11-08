#
# Build stage
#
#FROM maven:3.6.2-jdk-11-slim AS build

FROM maven:3.8.3-openjdk-16

RUN apt-get update || : && apt-get install python -y

RUN apt-get update && apt-get install build-essential -y

COPY . /home/app

RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
#FROM adoptopenjdk/openjdk16:alpine-jre

COPY /home/app/target/*.jar /home/app/app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/app/app.jar"]

#CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]