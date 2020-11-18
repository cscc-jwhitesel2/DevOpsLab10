#!/bin/sh
# originally !/bin/sh

set -x
#
# Sum the first 1000 even numbers ...[zero is the first even counting number]
#
sum=0 	#Initialize the sum to zero

for number in {0..999}
do
  #echo "number:" ${number} "2x:" $((2*${number}))
  sum=$((${sum} + (2 * ${number})))
done

echo "sum:" ${sum}
echo ${sum} > value.txt 
