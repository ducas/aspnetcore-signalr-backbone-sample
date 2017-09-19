#!/bin/bash

./build-web.sh
./build-container.sh

docker-compose up
