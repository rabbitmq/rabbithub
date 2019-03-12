#!/bin/bash

curl -X PUT https://guest:guest@localhost:8000/endpoint/q/"$1"
