# path: /opt/spark/conf/spark-env.sh
HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop

# change here to adjust different nodes
SPARK_LOCAL_IP='{{ ansible_host }}'

SPARK_MASTER_HOST='68.183.62.71'
SPARK_MASTER_WEBUI_PORT='8081'
SPARK_WORKER_MEMORY=512m