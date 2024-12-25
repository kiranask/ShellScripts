#!/bin/bash

# Define the string
string1="Hello, World!"

echo "String 1: $string1"

# 1. Find the length of the string

echo "Length of String 1: ${#string1}"

# 2. Extract a substring (e.g., from index 7, take 5 characters)

echo "Extracted Substring: ${string1:0:5}"

# 3. Find the position of a substring (e.g., 'World')
pos=$(expr index "$string1" "World")
if [ "$pos" -gt 0 ]; then
  echo "Position of 'World' in String 1: $((pos - 1))"
else
  echo "'World' not found in String 1."
fi

# 4. Replace a part of the string (e.g., replace 'World' with 'Shell Scripting')
replaced=${string1/World/Shell Scripting}
echo "Replaced String: $replaced"

# 5. Convert to uppercase
uppercase=$(echo "$string1" | tr '[:lower:]' '[:upper:]')
echo "Uppercase String: $uppercase"

# 6. Convert to lowercase
lowercase=$(echo "$string1" | tr '[:upper:]' '[:lower:]')
echo "Lowercase String: $lowercase"

# 7. Reverse the string
reversed=$(echo "$string1" | rev)
echo "Reversed String: $reversed"

# 8. Check if string contains a substring (e.g., 'Hello')
if [[ "$string1" == *"Hello"* ]]; then
  echo "'Hello' is present in String 1."
else
  echo "'Hello' is not present in String 1."
fi

# 9. Split the string by a delimiter (e.g., ',')
IFS=',' # Set delimiter to comma
read -ra parts <<< "$string1" # Split into an array
echo "Split Strings:"
for part in "${parts[@]}"; do
  echo "$part"
done

# 10. Remove all occurrences of a character (e.g., remove 'o')
removed=${string1//o/}
echo "String after removing 'o': $removed"

# 11. Check if the string is empty
if [ -z "$string1" ]; then
  echo "String 1 is empty."
else
  echo "String 1 is not empty."
fi

# 12. Append a string to the end
appended="$string1 - Welcome to Shell Scripting!"
echo "Appended String: $appended"

# 13. Prepend a string to the beginning
prepended="Greeting: $string1"
echo "Prepended String: $prepended"

# 14. Count occurrences of a character (e.g., count 'l')
count=$(echo -n "$string1" | grep -o 'l' | wc -l)
echo "Occurrences of 'l' in String 1: $count"

# 15. Check if two strings are equal
string2="Hello, World!"
if [ "$string1" == "$string2" ]; then
  echo "String 1 and String 2 are equal."
else
  echo "String 1 and String 2 are not equal."
fi

# End of operations
echo "String 1 Operations Completed."
