#!/bin/bash
###########################################
### Author: Kiran SK                     ##
### date: 24/12/2024			###
### This scripts output the node health ###
### Version: v1				###
###########################################
echo "disk space"
df -h 
echo "Memory Space"
free -g
echo "Number of Space"
nproc

