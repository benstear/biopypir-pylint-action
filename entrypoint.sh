#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

#echo Variable zero: $0
#echo Variable one: $1
#echo "$*"
#sh -c "$*"
echo $PWD
echo ls
chmod +x ./biopypir_linting.sh
./biopypir_linting.sh

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
