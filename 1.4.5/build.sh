#!/bin/bash
opts="--no-cache"
docker build $opts -t library/centos7-jdk8-elasticsearch-1.4.5 .
