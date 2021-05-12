FROM openjdk:8-jdk-alpine
EXPOSE 8080
VOLUME /tmp
MAINTAINER nagamohan <nagamohan225@gmail.com>
RUN  install git
ADD target/hello-docker-0.0.1-SNAPSHOT.jar hello-docker-app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /hello-docker-app.jar" ]
