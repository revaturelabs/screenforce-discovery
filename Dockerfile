FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ARG SPRING_ENV
ENV spring_profiles_active=$SPRING_ENV
EXPOSE 9085
COPY target/${JAR_FILE} app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/urandom -jar /app.jar" ]
