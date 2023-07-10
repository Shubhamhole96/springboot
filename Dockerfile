FROM openjdk:11-jdk

WORKDIR /app

COPY target/my-application.jar .

EXPOSE 8080

CMD ["java", "-jar", "my-application.jar"]
