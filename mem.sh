#!/bin/bash



USEDMEMORY=$(free -m | awk 'NR==2{printf "%.2f\t", $3*100/$2 }')
aws cloudwatch put-metric-data --metric-name memory-usage --dimensions Instance=i-0c6a39abc7b08c459  --namespace "Custom" --value $USEDMEMORY

