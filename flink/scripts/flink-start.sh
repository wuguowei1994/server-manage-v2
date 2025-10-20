#!/bin/bash

# Start the Flink session in detached mode
/opt/flink/bin/yarn-session.sh --detached

# Get the latest YARN application ID (you can adjust this command based on your needs)
YARN_APP_ID=$(yarn application -list | grep "Flink" | tail -n 1 | awk '{print $1}')

# Set the Flink SQL client's YARN application ID
export FLINK_YARN_APP_ID=$YARN_APP_ID

# Automatically modify the yarn.application.id in sql-client-defaults.yaml
sed -i "s/^  yarn.application.id: .*/  yarn.application.id: $FLINK_YARN_APP_ID/" /opt/flink/conf/sql-client-defaults.yaml
