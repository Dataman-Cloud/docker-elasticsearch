docker run -d --name es \
    -v /data/app/elasticsearch:/data/app/elasticsearch \
    --net=host \
    --restart always \
  -e CLUSTERNAME=escluster \
  -e HOSTNAME=$(hostname -s) \
  -e ES_HEAP_SIZE="512m" \
  centos7-jdk8-elasticsearch-1.4.5
