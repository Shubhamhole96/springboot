FROM maven:3-jdk-8-alpine AS build

WORKDIR /opt/app

COPY ./ /opt/app

RUN mvn clean install -DskipTests

FROM openjdk:8-jdk-alpine

COPY --from=build /opt/app/target/*.jar petadoption.jar

ENV PORT 8081
EXPOSE $PORT
ADD target/petadoption.jar petadoption.jar
ENTRYPOINT ["java", "-jar","-Xmx1024M","Dserver.port=$PORT","petadoption.jar"]

