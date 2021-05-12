FROM openjdk:8-jdk-alpine
MAINTAINER nagamohan <nagamohan225@gmail.com>
RUN apt-get update && apt-git install git
EXPOSE 8080
VOLUME /tmp
ADD target/hello-docker-0.0.1-SNAPSHOT.jar hello-docker-app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /hello-docker-app.jar" ]
