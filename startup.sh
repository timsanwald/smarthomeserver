#! /bin/bash

docker compose -f hosting.yml -f smarthome.yml -f monitoring.yml up -d
