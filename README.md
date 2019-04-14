# zeppelin
something


docker run -p 8080:8080 --rm \
--network cassandra-spark \
-v $PWD/logs:/logs \
-v $PWD/notebook:/notebook \
-v $PWD/conf/interpreter.json:/zeppelin/conf/interpreter.json
-e ZEPPELIN_LOG_DIR='/logs' \
-e ZEPPELIN_NOTEBOOK_DIR='/notebook' \
--name zeppelin apache/zeppelin:0.8.1

// https://mvnrepository.com/artifact/com.datastax.spark/spark-cassandra-connector
'com.datastax.spark:spark-cassandra-connector_2.11:2.4.1'

docker run \
--name cassandra \
-d --network cassandra-spark \
-e CASSANDRA_CLUSTER_NAME='CASSANDRA_SPARK' \
-p 9042:9042 \
-v $PWD/cassandra:/var/lib/cassandra \
cassandra:3

docker network create cassandra-spark
docker network connect cassandra-spark zeppelin
docker network connect cassandra-spark cassandra

https://drive.google.com/file/d/1JzHc2j1fCTTISBWgrms8ycRs0Y8fy_Y8/view


## Passwords

https://www.twilio.com/blog/2018/06/analyzing-pwned-passwords-with-apache-spark.html

```sh
git clone git@github.com:robinske/password-data.git data/passwords
```
