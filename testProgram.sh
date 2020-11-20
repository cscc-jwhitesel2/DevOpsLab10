#!/bin/sh
##### originally !/bin/sh

#testProgram.sh

set -x

if [ $FORCE_FAILURE != 0 ]; then
  exit 999
fi


ls ./sumworkspace
#
# read the value from the file
read number < ./sumworkspace/value.txt
echo "number: " ${number}
#
number=${TOTAL}
echo "number(TOTAL): " ${number}
#
# set expected value
expected_value=999000
#echo "expected_value: " ${expected_value}
#
# check the values and set the exit code 
#
if [ "${number}" == "${expected_value}" ]
then
  echo "....passed validation test...." 
  exit 0
else
  echo "....failed validation test...." 
  exit 1
fi
