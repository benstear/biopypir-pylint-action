#!/bin/bash
set -e




echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

#if [ "$1" == "test" ] 
#then
echo "$*"
echo 1
echo "$INPUT_PACKAGE_NAME"
echo 2
echo $INPUT_PACKAGE_NAME
echo 3
echo "$*" > args.txt
cat args.txt
echo 4


chmod +x ./docs/biopypir_docs/linting.sh && ./docs/biopypir_docs/linting.sh
#fi
#chmod +x ./docs/biopypir_docs/test_1.sh && ./docs/biopypir_docs/test_1.sh
echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"



#ls -a
#pylint scedar  --exit-zero --reports=y | \
#awk '$0 ~ /Your code/ || $0 ~ /Global/ {print}' | cut -d'/' -f1 | rev | cut -d' ' -f1 | rev > pylint-report.txt 
#ls
