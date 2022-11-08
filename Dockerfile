# Docker file tested for https://render.com
# # # # # # # #
# 1. Build stage
# # # # # # # #
FROM maven:3.6.2-jdk-11-slim AS build

# Below command will install essential packages
RUN apt-get update || : && apt-get install python -y
RUN apt-get update && apt-get install build-essential -y

# Copy the app and create artifact using mvn command
COPY . /home/app
RUN mvn -f /home/app/pom.xml clean package

# # # # # # # #
# 2. Package and Deploy stage
# # # # # # # #
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/*.jar /home/app/app.jar

# Just use
ENTRYPOINT ["java","-jar","/home/app/app.jar"]