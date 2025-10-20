#!/bin/bash

# Function to check ports
check_ports() {
    local hosts=("${!1}")  # Read the host list from the first argument
    local ports=("${!2}")  # Read the port list from the second argument

    echo 'Start checking ports'

    # Iterate over each host
    for host in "${hosts[@]}"; do
        # Iterate over each port
        for port in "${ports[@]}"; do
            # Check if the port is open on the host
            nc -z "$host" "$port" > /dev/null 2>&1
            if [ $? -eq 0 ]; then
                echo "Port $port on $host is in use, failed"
                exit 1
            fi
        done
    done

    echo "All ports are free on all hosts."
}
