FROM openjdk:8-alpine

COPY target/uberjar/gearmanager.jar /gearmanager/app.jar

EXPOSE 3000

CMD ["java", "-jar", "/gearmanager/app.jar"]
