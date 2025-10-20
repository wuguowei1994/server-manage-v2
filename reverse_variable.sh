#!/bin/bash

export LC_CTYPE=C
export LANG=C
# Define variables and their placeholders
host1="68.183.62.71"
host2="165.22.40.133"
host3="165.227.124.190"

# Define the placeholders
placeholder_host1="{{ host1 }}"
placeholder_host2="{{ host2 }}"
placeholder_host3="{{ host3 }}"

# Find and replace variables with placeholders in all files
find . -type f ! -path '*/.*' ! -name 'replace_variable.sh' ! -name 'reverse_variable.sh' \
-exec sed -i '' -e "s/${host1}/${placeholder_host1}/g; s/${host2}/${placeholder_host2}/g; s/${host3}/${placeholder_host3}/g" {} +

echo "Restoration complete."
