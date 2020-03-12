#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

chmod +x ./docs/biopypir_docs/linting.sh && ./docs/biopypir_docs/linting.sh
echo "qqqqqqqqqqqqqqqq"
chmod +x ./docs/biopypir_docs/install_dependencies.sh && ./docs/biopypir_docs/install_dependencies.sh

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"



#ls -a
#pylint scedar  --exit-zero --reports=y | \
#awk '$0 ~ /Your code/ || $0 ~ /Global/ {print}' | cut -d'/' -f1 | rev | cut -d' ' -f1 | rev > pylint-report.txt 
#echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
#ls
