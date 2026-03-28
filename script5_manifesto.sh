#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Rishi Prathap | Roll No: 24BAI10403

echo "Answer the following questions:"
echo ""

read -p "1. Tool you use daily: " TOOL
read -p "2. Meaning of freedom: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date)
OUTPUT_FILE="manifesto.txt"

echo "======================================="

# --- Create manifesto ---
echo "On $DATE, I believe in open source." > "$OUTPUT_FILE"
echo "I use $TOOL regularly." >> "$OUTPUT_FILE"
echo "Freedom means $FREEDOM." >> "$OUTPUT_FILE"
echo "I will build $BUILD and share it with everyone." >> "$OUTPUT_FILE"

echo "Manifesto saved in $OUTPUT_FILE"
echo "---------------------------------------"

cat "$OUTPUT_FILE"

echo "======================================="
