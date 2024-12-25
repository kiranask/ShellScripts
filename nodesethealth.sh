#!/bin/bash
###########################################
### Author: Kiran SK                     ##
### date: 24/12/2024			###
### This scripts output the node health ###
### Version: v1				###
###########################################
set -x # debug mode
df -h 
free -g
nproc

