#!/bin/bash
####################################
####################################
## Type of For Loops in Bash      ##
##                                ##
####################################
####################################
echo "Iterating over List of values "
for fruit in apple banana cherry
do
  echo $fruit
done
echo "Iterating Over a Range of Numbers"
for i in {1..5}
do
  echo "Number: $i"
done
echo "Iterating with step increment "
for i in $(seq 0 2 10)
do
  echo "Even Number: $i"
done

echo "Iterating through directory"

for file in /Applications/BeyondTrust/*
do
  echo "Files under the directory: $file"
done



