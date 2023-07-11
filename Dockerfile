FROM openjdk:11-jdk
EXPOSE 8000
ADD target/petadoption.jar petadoption.jar
CMD ["java", "-jar", "/petadoption.jar"]
