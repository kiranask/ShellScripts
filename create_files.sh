#!/bin/bash
#Create an empty file named file1.txt
touch file1.txt
find . -name file1.txt -type f -exec rm -rf {} \;
