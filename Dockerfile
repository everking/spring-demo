FROM maven AS build
ARG build
LABEL build=${build}
LABEL image=build
WORKDIR /app
COPY . /app

USER root
COPY . .
# RUN mvn test
RUN mvn clean install

FROM amazoncorretto:11
ARG DOCKER_TAGS=latest

COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar 
COPY entry.sh /app/entry.sh

USER root

ENV APP_HOME /app
ENV CATALINA_BASE /app/
ENV CATALINA_HOME /app/

CMD ["/bin/sh", "/app/entry.sh"]
