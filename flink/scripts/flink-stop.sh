#!/bin/bash

# Get the latest YARN application ID (you can adjust this command based on your needs)
YARN_APP_ID=$(yarn application -list | grep "Flink" | tail -n 1 | awk '{print $1}')

# Check if the application ID was found
if [ -z "$YARN_APP_ID" ]; then
  echo "No Flink application found to stop."
  exit 1
fi

# Output the found application ID
echo "Found Flink application ID: $YARN_APP_ID"

# Stop the Flink application using the automatically detected application ID
echo "stop" | /opt/flink/bin/yarn-session.sh -id $YARN_APP_ID

echo "Flink application $YARN_APP_ID has been stopped."
