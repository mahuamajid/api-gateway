FROM maven:3.9.9-eclipse-temurin-21 AS build

RUN mkdir -p /usr/local/apps/api-gateway
WORKDIR /usr/local/apps/api-gateway

ADD target/api-gateway-0.0.1.jar .
ENTRYPOINT ["java","-jar","api-gateway-0.0.1.jar"]


# docker build -t api-gateway .