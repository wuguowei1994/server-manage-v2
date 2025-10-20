#!/bin/bash

ansible-playbook \
--inventory inventory/flink.ini \
--limit flink \
--user root \
--become \
--timeout 20 \
ansible/flink-install.yaml