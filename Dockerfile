FROM adoptopenjdk/openjdk16:alpine-jre

CMD ["mvn", "clean install package"]

COPY  target/*.jar /app.jar

# Run the web service on container startup.
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]