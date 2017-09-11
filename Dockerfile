FROM openjdk:8-alpine

COPY ./target/uberjar/docker-test-0.1.0-SNAPSHOT-standalone.jar /app/
ENTRYPOINT ["/usr/bin/java", "-jar", "/app/docker-test-0.1.0-SNAPSHOT-standalone.jar"]
