FROM registry.access.redhat.com/ubi8/openjdk-17
WORKDIR /app
COPY build/libs/customer.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","customer.jar"]
