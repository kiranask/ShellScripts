#!/bin/bash

# Declare and initialize an array
my_array=("apple" "banana" "cherry" "date")

# Accessing elements of the array
echo "First element: ${my_array[0]}"
echo "Second element: ${my_array[1]}"


# Add an element to the array
my_array+=("elderberry")
echo "Array after adding an element: ${my_array[*]}"

# Modify an element in the array
my_array[1]="blueberry"
echo "Array after modifying the second element: ${my_array[*]}"

# Get the length of the array
length=${#my_array[@]}
echo "Number of elements in the array: $length"

# Loop through the array using indices
echo "Iterating using indices:"
for i in "${!my_array[*]}"; do
  echo "Index $i: ${my_array[$i]}"
done


# Loop through the array directly
echo "Iterating through elements:"
for element in "${my_array[@]}"; do
  echo "Element: $element"
done


# Declare an array with integers and perform arithmetic
numbers=(10 20 30 40 50)
sum=0
for num in "${numbers[@]}"; do
  sum=$((sum + num))
done
echo "Sum of numbers: $sum"
