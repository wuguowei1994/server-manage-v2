#!/bin/bash

# install master
ansible-playbook \
--inventory inventory/druid.ini \
--limit druid-master \
--user root \
--become \
--timeout 20 \
ansible/druid-master-install.yaml

# install query
ansible-playbook \
--inventory inventory/druid.ini \
--limit druid-query \
--user root \
--become \
--timeout 20 \
ansible/druid-query-install.yaml

# install druid-data
ansible-playbook \
--inventory inventory/druid.ini \
--limit druid-data \
--user root \
--become \
--timeout 20 \
ansible/druid-data-install.yaml