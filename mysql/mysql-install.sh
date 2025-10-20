#!/bin/bash

ansible-playbook \
--inventory inventory/mysql.ini \
--limit mysql \
--user root \
--become \
--timeout 20 \
ansible/mysql-install.yaml