# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

# Set environment variable to configure Spring Boot to run on port 9090
#ENV SERVER_PORT=9090

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
