#!/usr/bin/env bash

#
# Script to Lint all charts
#

echo "Linting all Charts..."

set -e

trap 'echo "Command failed...exiting. Please fix me!"' ERR


if [ "$1" ]; then
    declare -a charts=("$1")
else
    declare -a charts=(
        pm4ml-ui
        pm4ml-experience-api
        pm4ml-management-api-service
        mojaloop-core-connector
        mojaloop-payment-token-adapter
        mojaloop-simulator-backend
        mojaloop-payment-manager
        inter-scheme-proxy-adapter
        mojaloop-proxy-payment-manager
    )
fi

echo "\n"

for chart in "${charts[@]}"
do
    echo "---=== Linting $chart ===---"
    helm lint $chart
done

echo "\
Chart linting completed.\n \
Ensure you check the output for any errors. \n \
Ignore any http errors when connecting to \"local\" chart repository.\n \
\n \
Happy Helming!
"
