#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rishi Prathap | Roll No: 24BAI10403

# --- Variable ---
PACKAGE="git"

echo "======================================="
echo "   FOSS Package Inspector"
echo "======================================="

# --- Check if package is installed ---
if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed on this system."
    echo "Package Details:"
    dpkg -l | grep "$PACKAGE"
else
    echo "$PACKAGE is NOT installed on this system."
fi

echo "---------------------------------------"

# --- Case statement for description ---
case $PACKAGE in
    git)
        echo "Git: A distributed version control system used for collaboration."
        ;;
    mysql)
        echo "MySQL: Open source relational database management system."
        ;;
    vlc)
        echo "VLC: Free and open-source multimedia player."
        ;;
    firefox)
        echo "Firefox: Browser that supports an open web."
        ;;
    *)
        echo "No information available."
        ;;
esac

echo "======================================="
