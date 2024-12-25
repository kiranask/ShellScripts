#!/bin/bash

for number in {1..100}
do

  if (( $number % 3 ==0 || $number % 5 ==0 && $number % 15 !=0 ))
  then
    echo "the number is $number"
  fi

done