#!/bin/bash

# Check if sample1.txt exists
if [ ! -f "sample1.txt" ]; then
  echo "Error: sample1.txt not found!"
  exit 1
fi

echo "Using the existing file: sample1.txt"
echo ""

# 1. Print the entire file
echo "1. Print the entire file:"
awk '{print}' sample1.txt
echo ""

# 2. Print specific columns (e.g., Name and Salary)
echo "2. Print Name and Salary columns:"
awk '{print $2, $4}' sample1.txt
echo ""

# 3. Skip the header and print specific columns
echo "3. Skip the header and print Name and Salary:"
awk 'NR > 1 {print $2, $4}' sample1.txt
echo ""

# 4. Print lines where Salary is greater than 60000
echo "4. Lines where Salary is greater than 60000:"
awk '$4 > 60000' sample1.txt
echo ""

# 5. Print lines where Age is between 30 and 40
echo "5. Lines where Age is between 30 and 40:"
awk '$3 >= 30 && $3 <= 40' sample1.txt
echo ""

# 6. Add a header to output
echo "6. Add a header to the output:"
awk 'BEGIN {print "Name Salary"} NR > 1 {print $2, $4}' sample1.txt
echo ""

# 7. Count the number of lines (excluding the header)
echo "7. Count the number of data lines:"
awk 'NR > 1 {count++} END {print "Total Lines:", count}' sample1.txt
echo ""

# 8. Calculate the total and average Salary
echo "8. Calculate the total and average Salary:"
awk 'NR > 1 {total += $4} END {print "Total Salary:", total, "Average Salary:", total/(NR-1)}' sample1.txt
echo ""

# 9. Print lines where Name starts with 'A' or 'B'
echo "9. Lines where Name starts with 'A' or 'B':"
awk '$2 ~ /^[AB]/' sample1.txt
echo ""

# 10. Replace Salary with a new calculated value (e.g., 10% bonus)
echo "10. Replace Salary with a new calculated value (10% bonus):"
awk 'NR == 1 {print $0} NR > 1 {printf "%s %s %s %.2f\n", $1, $2, $3, $4 * 1.1}' sample1.txt
echo ""

# 11. Print the last column of each line
echo "11. Print the last column of each line:"
awk '{print $NF}' sample1.txt
echo ""

# 12. Print lines where any field contains 'Bob'
echo "12. Print lines where any field contains 'Bob':"
awk '$0 ~ /Bob/' sample1.txt
echo ""

# 13. Highlight a specific word (e.g., 'Diana') in the output
echo "13. Highlight the word 'Diana' in the output:"
awk '{gsub(/Diana/, "\033[1;31mDiana\033[0m"); print}' sample1.txt
echo ""

# 14. Print fields in reverse order
echo "14. Print fields in reverse order:"
awk '{for (i=NF; i>0; i--) printf "%s ", $i; print ""}' sample1.txt
echo ""

# 15. Extract unique values from a specific column (e.g., Age)
echo "15. Extract unique Age values:"
awk 'NR > 1 {ages[$3]++} END {for (age in ages) print age}' sample1.txt
echo ""
