#!/bin/bash

# check port
source ../common/check_port.sh
hosts=("165.22.40.133")
ports=("9200" "5601")
check_ports hosts[@] ports[@]

ansible-playbook \
--inventory inventory/elasticsearch.ini \
--limit elasticsearch \
--user root \
--become \
--timeout 20 \
ansible/elasticsearch-install.yaml