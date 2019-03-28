#!/bin/bash
curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-18.09.2.tgz \
   && tar xzvf docker-18.09.2.tgz \
   && mv docker/docker /usr/local/bin \
   && rm -r docker docker-18.09.2.tgz
