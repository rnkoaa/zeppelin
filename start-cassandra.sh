#!/bin/sh

docker run \
-d \
--network cassandra-spark \
-e CASSANDRA_CLUSTER_NAME='CASSANDRA_SPARK' \
-p 9042:9042 \
-v $PWD/cassandra:/var/lib/cassandra \
--name cassandra \
cassandra:3

