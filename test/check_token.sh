#!/bin/bash

token=$(curl -fv "https://guest:guest@localhost:8000/endpoint/$1?hub.mode=generate_token&hub.intended_use=$2")
if [ $? = 0 ]
then
    curl -v "http://localhost:8000/endpoint/$1?hub.mode=$2&hub.topic=&${token}"
else
    echo "Token generation failed"
fi
