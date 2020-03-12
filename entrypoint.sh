#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

#echo Variable zero: $0
#echo Variable one: $1
#echo "$*"
#sh -c "$*"
#PWD
#ls -a
#chmod +x ./biopypir_linting.sh
#./biopypir_linting.sh

ls -a
pylint scedar  --exit-zero --reports=y | \
awk '$0 ~ /Your code/ || $0 ~ /Global/ {print}' | cut -d'/' -f1 | rev | cut -d' ' -f1 | rev > pylint-report.txt 

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
