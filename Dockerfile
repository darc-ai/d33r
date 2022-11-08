FROM adoptopenjdk/openjdk16:alpine-jre

COPY . /home/app

RUN mvn -f /home/app/pom.xml clean package

COPY  target/*.jar /home/app/app.jar

# Run the web service on container startup.
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/app/app.jar"]

#CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]