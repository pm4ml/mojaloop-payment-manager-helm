#!/usr/bin/env bash

#
# Script to Render all charts
#

echo "Render all Charts..."

set -e

trap 'echo "Command failed...exiting. Please fix me!"' ERR

rm -rf test
mkdir test

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

for chart in "${charts[@]}"
do
    echo "---=== Rendering $chart ===---"
    helm template --api-versions apps/v1/Deployment --api-versions batch/v1 $chart | yq -s '"test/'$chart'/" + .kind + "-" + .metadata.name'
done

