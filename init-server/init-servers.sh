#!/bin/bash

# firewall_trusted_ips 末尾必须空行

ansible-playbook \
--user root \
--become \
--timeout 20 \
--inventory inventory/servers.ini \
--limit all-hosts \
ansible/init-servers.yaml