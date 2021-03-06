FROM openjdk:8-jre-alpine

ARG version=1.0-SNAPSHOT
ADD target/mqtt-gateway-${version}.jar /
COPY ./run_mqtt.sh /etc/mqtt-gateway/

EXPOSE 1883 8883

CMD ["/etc/mqtt-gateway/run_mqtt.sh"]
