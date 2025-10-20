#!/bin/bash

# check port
source ../common/check_port.sh
hosts=("68.183.62.71" "165.22.40.133" "165.227.124.190")
ports=("9092")
check_ports hosts[@] ports[@]

ansible-playbook \
--inventory inventory/kafka.ini \
--limit kafka \
--user root \
--become \
--timeout 20 \
ansible/kafka-install.yaml