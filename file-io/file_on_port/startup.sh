#!/bin/bash
docker stop my_server
docker rm my_server
docker build -t file_server .
docker run -it -d --name my_server -p 9001 dockerfile_server sh scripts/create_and_serve.sh