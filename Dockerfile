FROM openjdk:8

WORKDIR /usr/src/app

RUN git clone https://github.com/docker-hy/material-applications

EXPOSE 8080

COPY . .

WORKDIR material-applications/spring-example-project
RUN ./mvnw package
CMD ["java", "-jar",  "./target/docker-example-1.1.3.jar"]
