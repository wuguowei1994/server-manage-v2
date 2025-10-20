#!/bin/bash

# Shut down druid-master service
nohup ssh centos-01 "/opt/druid-master/bin/service --down" > /dev/null 2>&1 &

# Shut down druid-data service
nohup ssh centos-01 "/opt/druid-data/bin/service --down" > /dev/null 2>&1 &
nohup ssh centos-02 "/opt/druid-data/bin/service --down" > /dev/null 2>&1 &
nohup ssh centos-03 "/opt/druid-data/bin/service --down" > /dev/null 2>&1 &

# Shut down druid-query service
nohup ssh centos-02 "/opt/druid-query/bin/service --down" > /dev/null 2>&1 &

# kill Main process
nohup ssh root@centos-01 "source /root/.bashrc; jps | awk '\$2 == \"Main\" {print \$1}' | xargs -I {} kill -15 {}" > /dev/null 2>&1 &
nohup ssh root@centos-02 "source /root/.bashrc; jps | awk '\$2 == \"Main\" {print \$1}' | xargs -I {} kill -15 {}" > /dev/null 2>&1 &
nohup ssh root@centos-03 "source /root/.bashrc; jps | awk '\$2 == \"Main\" {print \$1}' | xargs -I {} kill -15 {}" > /dev/null 2>&1 &
