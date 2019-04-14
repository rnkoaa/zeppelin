#!/bin/sh

docker run -p 8080:8080 \
-d \
--network cassandra-spark \
-v $PWD/logs:/logs \
-v $PWD/notebook:/notebook \
-v $PWD/data:/zeppelin/data \
-v $PWD/conf/interpreter.json:/zeppelin/conf/interpreter.json \
-e ZEPPELIN_LOG_DIR='/logs' \
-e ZEPPELIN_NOTEBOOK_DIR='/notebook' \
--name zeppelin apache/zeppelin:0.8.1

