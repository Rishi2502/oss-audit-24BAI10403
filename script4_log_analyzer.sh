#!/bin/bash
# Script 4: Log File Analyzer
# Author: Rishi Prathap | Roll No: 24BAI10403

LOGFILE=$1
KEYWORD=${2:-error}
COUNT=0

echo "======================================="
echo "   Log File Analyzer"
echo "======================================="

# --- Check file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

# --- Read file line by line ---
while read LINE; do
    if echo "$LINE" | grep -i "$KEYWORD" > /dev/null; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times"

echo "---------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "======================================="
