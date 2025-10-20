#!/bin/bash

# Start druid-master service
nohup ssh centos-01 "cd /opt/druid-master && rm -rf log/* nohup.out && nohup bin/start-cluster-master-no-zk-server &" > /dev/null 2>&1 &

# Start druid-data service
nohup ssh centos-01 "cd /opt/druid-data && rm -rf log/* nohup.out && nohup bin/start-cluster-data-server &" > /dev/null 2>&1 &
nohup ssh centos-02 "cd /opt/druid-data && rm -rf log/* nohup.out && nohup bin/start-cluster-data-server &" > /dev/null 2>&1 &
nohup ssh centos-03 "cd /opt/druid-data && rm -rf log/* nohup.out && nohup bin/start-cluster-data-server &" > /dev/null 2>&1 &

# Start druid-query service
nohup ssh centos-02 "cd /opt/druid-query && rm -rf log/* nohup.out && nohup bin/start-cluster-query-server &" > /dev/null 2>&1 &
