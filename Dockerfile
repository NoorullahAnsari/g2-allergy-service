FROM openjdk:17

EXPOSE 9002

ADD /target/g2-allergy-service-1.0.0-Release.jar g2-allergy-service.jar

ENTRYPOINT [ "java","-jar","g2-allergy-service.jar"]