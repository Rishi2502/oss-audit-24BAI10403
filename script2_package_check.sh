#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rishi Prathap | Roll No: 24BAI10045

# --- Variable ---
PACKAGE="kernel"

# --- Get kernel version ---
KERNEL_VERSION=$(uname -r)

echo "======================================="
echo "   FOSS Package Inspector"
echo "======================================="

# --- Check kernel ---
if [ -n "$KERNEL_VERSION" ]; then
    echo "Linux Kernel is installed."
    echo "Kernel Version: $KERNEL_VERSION"
    echo "License: GPL v2"
else
    echo "Linux Kernel not found."
fi

echo "---------------------------------------"

# --- Description using case ---
case $PACKAGE in
    kernel)
        echo "Linux Kernel: the core part of OS connecting hardware and software"
        ;;
    git)
        echo "Git: distributed version control system used by developers"
        ;;
    python)
        echo "Python: popular high-level programming language"
        ;;
    apache)
        echo "Apache: widely used open-source web server"
        ;;
    *)
        echo "Unknown package"
        ;;
esac

echo "======================================="
