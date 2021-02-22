FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE
ARG LIBS
ENV JAVA_ARGS ""
COPY $JAR_FILE /quarkus-auth-poc-1.0.0-SNAPSHOT-runner.jar
COPY $LIBS /lib
CMD java -jar $JAVA_ARGS -Djava.net.preferIPv4Stack=true quarkus-auth-poc-1.0.0-SNAPSHOT-runner.jar