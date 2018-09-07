#!/bin/bash

docker build -t presentation-builder:local ./builder/

docker run -p 3000:80 -v "$(pwd)/presentation:/app/input" presentation-builder:local  & \
sleep 3 && \
xdg-open "http://localhost:3000"
