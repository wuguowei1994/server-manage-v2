#!/bin/bash

#[namenode]
#68.183.62.71
#
#[datanode]
#165.22.40.133
#165.227.124.190
#
#[resource-manager]
#68.183.62.71
#
#[node-manager]
#165.22.40.133
#165.227.124.190
#
#[job-history]
#68.183.62.71

# check port
source ../common/check_port.sh
hosts=("68.183.62.71" "165.22.40.133" "165.227.124.190")
ports=("7000" "9870" "10020" "19888")
check_ports hosts[@] ports[@]

ansible-playbook \
--inventory ../my-servers.ini \
--limit all-hosts \
--user root \
--become \
--timeout 20 \
ansible/hadoop-install.yaml