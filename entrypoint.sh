#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

if [ "$INPUT_PACKAGE_NAME" == "test" ] 
then
chmod +x ./docs/biopypir_docs/linting.sh && ./docs/biopypir_docs/linting.sh
fi
#chmod +x ./docs/biopypir_docs/test_1.sh && ./docs/biopypir_docs/test_1.sh
echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"



#ls -a
#pylint scedar  --exit-zero --reports=y | \
#awk '$0 ~ /Your code/ || $0 ~ /Global/ {print}' | cut -d'/' -f1 | rev | cut -d' ' -f1 | rev > pylint-report.txt 
#ls
