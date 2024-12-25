#!/bin/bash
#Strings
string1="Hello World"
echo ${string1:0:5}
# Nums
num=10
sum=$(( $num + 5 ))
echo "Sum: $sum"

num1=20
num2=5
echo $((num1 + num2)) # Addition
echo $((num1 - num2)) # Subtraction
echo $((num1 * num2)) # Multiplication
echo $((num1 / num2)) # Division
echo $((num1 % num2)) # percentile

# Arrays
fruits=("apple" "banana" "cherry")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
