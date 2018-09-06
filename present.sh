#!/bin/bash

docker build -t presentation-builder:local ./builder/

xdg-open "http://localhost:3000"

docker run -ti --rm -p 3000:80 -v "$(pwd)/input:/app/input" -v "$(pwd)/output:/app/output" presentation-builder:local