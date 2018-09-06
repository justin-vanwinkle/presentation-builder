#!/bin/bash

docker build -t presentation-builder:local ./builder/

xdg-open "http://localhost:3000"

docker run -ti --rm -p 3000:80 -v "$(pwd)/input:/input" -v "$(pwd)/output:/output" presentation-builder:local