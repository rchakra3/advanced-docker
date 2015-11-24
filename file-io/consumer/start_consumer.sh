#!/bin/bash

docker rm consumer
docker run -it --link my_server --name consumer socat_consumer
