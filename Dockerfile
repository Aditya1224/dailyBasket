FROM gradle:8-jdk17 AS builder
WORKDIR /app
COPY . .
RUN gradle build

FROM registry.access.redhat.com/ubi8/openjdk-17
WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
