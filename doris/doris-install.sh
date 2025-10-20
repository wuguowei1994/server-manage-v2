#!/bin/bash

#[fe]
#68.183.62.71
#
#[be]
#165.22.40.133
#165.227.124.190
#

# check port
source ../common/check_port.sh
hosts=("68.183.62.71" "165.22.40.133" "165.227.124.190")
ports=("9060" "8050" "9050" "8060" "8070" "9020" "9030" "9010" "8000")
check_ports hosts[@] ports[@]

ansible-playbook \
--inventory ../my-servers.ini \
--limit all-hosts \
--user root \
--become \
--timeout 20 \
ansible/doris-install.yaml
