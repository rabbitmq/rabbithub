#!/bin/bash

curl -vd "hub.mode=subscribe&hub.callback=http://localhost:8888/sub1&hub.topic=foo&hub.verify=sync&hub.verify=async" https://guest:guest@localhost:8000/subscribe/x/amq.direct
