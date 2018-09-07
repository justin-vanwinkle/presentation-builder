#!/bin/bash

function openBrowser(){
    sleep 5 
    xdg-open "http://localhost:3000"
    
}

mkdir output

docker build -t presentation-builder:local ./builder/

openBrowser &

docker run -it --rm -p 3000:80 -v "$(pwd)/input:/app/input" -v "$(pwd)/output:/app/output" presentation-builder:local ./preparer.sh
