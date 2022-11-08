FROM adoptopenjdk/openjdk16:alpine-jre

COPY  target/*.jar /app.jar

# Run the web service on container startup.
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]