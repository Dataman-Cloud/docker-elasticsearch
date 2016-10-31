#!/bin/bash
/filedownload.sh

CLUSTER_NAME=${CLUSTER_NAME:-escluster}
DATA_PATH=${DATA_PATH:-/data/app/elasticseaerch}
LOGS_PATH=${LOGS_PATH:-/data/log/elasticsearch}
TRANSPORT_TCP_PORT=${TRANSPORT_TCP_PORT:-9300}
HTTP_PORT=${HTTP_PORT:-9200}

cd /usr/share/elasticsearch/config
cp -f elasticsearch.yml.template elasticsearch.yml
sed -i 's/--CLUSTER_NAME--/'$CLUSTER_NAME'/g'  elasticsearch.yml
sed -i 's/--DATA_PATH--/'$DATA_PATH'/g' elasticsearch.yml
sed -i 's/--LOGS_PATH--/'$LOGS_PATH'/g' elasticsearch.yml
sed -i 's/--TRANSPORT_TCP_PORT--/'$TRANSPORT_TCP_PORT'/g' elasticsearch.yml
sed -i 's/--HTTP_PORT--/'$HTTP_PORT'/g' elasticsearch.yml

/usr/share/elasticsearch/bin/elasticsearch
