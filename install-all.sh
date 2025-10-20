#!/bin/bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo 'Start initializing all servers'
cd  "$script_dir/init-server"
bash init-servers.sh

echo 'Start installing mysql'
cd "$script_dir/mysql"
bash mysql-install.sh

echo 'Start installing zookeeper'
cd "$script_dir/zookeeper"
bash zookeeper-install.sh

echo 'Start installing kafka'
cd "$script_dir/kafka"
bash kafka-install.sh

echo 'Start installing hadoop'
cd "$script_dir/hadoop"
bash hadoop-install.sh

echo 'Start installing druid'
cd ../druid
bash druid-install.sh

echo 'Start installing spark'
cd ../spark
bash spark-install.sh

echo 'Start installing prometheus'
cd ../prometheus
bash prometheus-install.sh

echo 'Start installing flink'
cd ../flink
bash flink-install.sh

echo 'Start installing doris'
cd ../doris
bash doris-install.sh

echo 'Start installing elasticsearch'
cd ../elasticsearch6.8.8
bash elasticsearch-install.sh