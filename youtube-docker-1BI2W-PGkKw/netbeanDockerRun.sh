#!/bin/bash

xhost +
echo "Starting Netbeans Docker Container"

docker run - -rm -d \
-e DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v ~/Workspace/.m2:/home/netbeans/.m2 \
-v ~/Workspace/NetBeansProjects/.git:/home/netbeans
-v ~/Workspace/NetBeansProjects/.netbeans:/home/netbeans/.netbeans \
-v ~/Workspace/NetBeansProjects:/home/netbeans/NetBeansProjects \
- -name netbeans \
netbeans:8.2
