#!/bin/bash

# check port
source ../common/check_port.sh
hosts=("68.183.62.71" "165.22.40.133" "165.227.124.190")
ports=("2181" "2888" "3888")
check_ports hosts[@] ports[@]

ansible-playbook \
--inventory inventory/zookeeper.ini \
--limit zookeeper \
--user root \
--become \
--timeout 20 \
ansible/zookeeper-install.yaml