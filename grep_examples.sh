#!/bin/bash

# Check if sample.txt exists
if [ ! -f "sample.txt" ]; then
  echo "Error: sample.txt not found!"
  exit 1
fi

echo "Using the existing file: sample.txt"


# 1. Basic search for a string
echo "1. Basic search for 'apple':"
grep "apple" sample.txt
echo ""

# 2. Case-insensitive search
echo "2. Search for 'APPLE' (case-insensitive):"
grep -i "APPLE" sample.txt
echo ""

# 3. Exclude lines containing a pattern
echo "3. Lines that do NOT contain 'apple':"
grep -v "apple" sample.txt
echo ""

# 4. Count matching lines
echo "4. Count the number of lines containing 'apple':"
grep -c "apple" sample.txt
echo ""

# 5. Display line numbers with matches
echo "5. Display line numbers of lines containing 'apple':"
grep -n "apple" sample.txt
echo ""

# 6. Search for lines starting with a specific pattern
echo "6. Search for lines that start with 'a':"
grep "^a" sample.txt
echo ""

# 7. Search for lines ending with a specific pattern
echo "7. Search for lines that end with 'e':"
grep "e$" sample.txt
echo ""

# 8. Search using multiple patterns
echo "8. Search for lines containing 'apple' or 'banana':"
grep -E "apple|banana" sample.txt
echo ""

# 9. Display only the matching parts of a line
echo "9. Display only the matching word 'apple':"
grep -o "apple" sample.txt
echo ""

# 10. Recursive search in directories
echo "10. Recursive search for 'pineapple' in the current directory:"
grep -r "pineapple" .
echo ""

# 11. Highlight matches in output
echo "11. Highlight matches for 'apple' (with color):"
grep --color=always "apple" sample.txt
echo ""

# 12. Use grep with a specific word boundary
echo "12. Search for the whole word 'apple' (not 'pineapple'):"
grep -w "apple" sample.txt
echo ""

# 13. Invert match and count lines
echo "13. Count lines NOT containing 'apple':"
grep -v -c "apple" sample.txt
echo ""

# 14. List filenames with matches
echo "14. Search for 'apple' and display filenames only:"
grep -l "apple" sample.txt
echo ""

# 15. Match a fixed string (ignoring regex special characters)
echo "15. Search for the literal string 'apple pie' (fixed string):"
grep -F "apple pie" sample.txt
echo ""

