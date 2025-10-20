#!/bin/bash

ansible-playbook \
--inventory ../my-servers.ini \
--limit all-hosts \
--user root \
--become \
--timeout 20 \
start-all-component.yaml