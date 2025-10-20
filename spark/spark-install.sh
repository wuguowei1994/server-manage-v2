#!/bin/bash

# check port
source ../common/check_port.sh
hosts=("68.183.62.71" "165.22.40.133" "165.227.124.190")
ports=("8081" "7077" "18080")
check_ports hosts[@] ports[@]

ansible-playbook \
--inventory ../my-servers.ini \
--limit all-hosts \
--user root \
--become \
--timeout 20 \
ansible/spark-install.yaml