#!/bin/bash
# Script 1: System Identity Report
# Author: Rishi Prathap | Roll No: 24BAI10403

# --- Variables ---
STUDENT_NAME="Rishi Prathap"
ROLL_NO="24BAI10403"
SOFTWARE_CHOICE="Git"

# --- System Information ---
KERNEL_VERSION=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

DISTRO_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d '=' -f2)

# --- Output ---
echo "========================================"
echo "   Open Source Audit - System Report"
echo "========================================"
echo "Student Name : $STUDENT_NAME"
echo "Roll Number  : $ROLL_NO"
echo "Software     : $SOFTWARE_CHOICE"
echo "----------------------------------------"
echo "Kernel       : $KERNEL_VERSION"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo "Distro       : $DISTRO_NAME"
echo "License      : GNU GPL (Linux Kernel)"
echo "========================================"
