#!/bin/bash
opts="--no-cache"
docker build $opts -f Dockerfile_runtime -t library/centos7-jdk8-elasticsearch-2.4.1 .
