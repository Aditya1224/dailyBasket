FROM docker.io/library/openjdk:17-jdk-slim ✅
WORKDIR /app
COPY build/libs/customer.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","customer.jar"]
