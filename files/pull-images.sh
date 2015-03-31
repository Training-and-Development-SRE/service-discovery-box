#!/bin/sh

sudo /etc/init.d/docker start
while [ "$(sudo /etc/init.d/docker status)" != "Docker daemon is running" ]; do echo 'Waiting for Docker daemon to start...'; sleep 1; done

sudo docker pull gliderlabs/alpine:latest

sudo docker pull progrium/consul:latest
sudo docker pull gliderlabs/registrator:latest

sudo docker pull golang

sudo /etc/init.d/docker stop
