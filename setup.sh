#! /bin/bash
export DATADIR="/usr/server/data"

docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions

# Prometheus setup
mkdir -p $DATADIR/prometheus/etc
cp -rf prometheus_config.yaml ${DATADIR}/prometheus/etc/prometheus.yml

# Promtail
mkdir -p ${DATADIR}/promtail/config
cp -rf promtail-config.yaml ${DATADIR}/promtail/config/promtail-config.yaml

# Loki
mkdir -p ${DATADIR}/loki/config
cp -rf loki-config.yaml ${DATADIR}/loki/config/loki-config.yaml

# Mosquitto
mkdir -p ${DATADIR}/mosquitto/config
cp -rf mosquitto.conf ${DATADIR}/mosquitto/config/mosquitto.conf

#Zigbee2MQTT
mkdir -p ${DATADIR}/zigbee2mqtt/data
cp -rf zigbee2mqtt_configuration.yaml ${DATADIR}/zigbee2mqtt/data/configuration.yaml
