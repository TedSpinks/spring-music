FROM openjdk:8-jre-slim

EXPOSE 8080

RUN mkdir /app

COPY build/libs/*.jar /app/spring-music.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/spring-music.jar"]