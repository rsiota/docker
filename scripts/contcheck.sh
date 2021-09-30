#!/usr/bin/env bash

container_name="mysql"
if [ "$( docker container inspect -f '{{.State.Status}}' $container_name )" == "running" ]; then
	echo "It's running"
fi
