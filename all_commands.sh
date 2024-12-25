#!/bin/bash
# Print all the processes
ps -ef | awk -F "  " {print $1}
# Print all the error logs
curl https://github.com/iam-veeramalla/sandbox/blob/main/log/dummylog01122022.log | grep error

#for Debuging
set -x
# for exit if any failure
set -e
# for exit if pipe fail.
set -o pipefail
# break : Break the execution when certain condition met
# continue : Continue the execution, skip the certain condition

