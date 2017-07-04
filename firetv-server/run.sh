#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONFIG_FILE=/etc/firetv-server.yaml

DEVICE_COUNT=$(jq --raw-output ".devices | length" $CONFIG_PATH)

echo "devices:" > $CONFIG_FILE
for (( i=0; i < "$DEVICE_COUNT"; i++ )); do
	NAME=$(jq --raw-output ".devices[$i].name" $CONFIG_PATH)
	HOST=$(jq --raw-output ".devices[$i].host" $CONFIG_PATH)
	PORT=$(jq --raw-output ".devices[$i].port" $CONFIG_PATH)
	echo "  $NAME:" >> $CONFIG_FILE
        echo "    host: $HOST:$PORT" >> $CONFIG_FILE
done
exec /usr/bin/firetv-server -c $CONFIG_FILE
