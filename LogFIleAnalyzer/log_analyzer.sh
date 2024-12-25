#!/bin/bash

# Log Analyzer Script
# Usage: ./log_analyzer.sh <log_file>

# Check if the log file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

LOG_FILE=$1

# Check if the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File $LOG_FILE not found!"
    exit 1
fi

# Function to display the top 5 most requested URLs
top_requested_urls() {
    echo "Top 5 Most Requested URLs:"
    awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -5
}

# Function to count HTTP status codes
status_code_distribution() {
    echo "HTTP Status Code Distribution:"
    awk '{print $9}' "$LOG_FILE" | grep -E '^[0-9]{3}$' | sort | uniq -c | sort -nr
}

# Function to count total requests
total_requests() {
    echo "Total Number of Requests:"
    wc -l < "$LOG_FILE"
}

# Main menu
echo "Log File Analyzer"
echo "------------------"

# Display results
total_requests
echo
top_requested_urls
echo
status_code_distribution
