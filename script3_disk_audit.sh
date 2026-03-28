#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Rishi Prathap | Roll No: 24BAI10403

# --- Directories to check ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================="
echo "   Directory Audit Report"
echo "======================================="

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERM=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERM | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "---------------------------------------"

# --- Check Git config directory ---
if [ -d "$HOME/.git" ]; then
    echo "Git config directory found:"
    ls -ld "$HOME/.git"
else
    echo "Git config directory not found"
fi

echo "======================================="
