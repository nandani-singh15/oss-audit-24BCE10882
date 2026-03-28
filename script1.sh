#!/bin/bash
# Script 1: System Identity Report
# Author: Your Name | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Nandani singh"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime)
DATE=$(date)

# Git Bash doesn't always support /etc/os-release properly
OS_NAME=$(uname -o)

# --- Display Output ---
echo "======================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "os Type      : $OS_NAME"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Current Date    : $DATE"
echo "License         : GNU General Public License (GPL)"
echo "Welcome! This is my system audit script."
echo "This script shows basic system information."
echo "======================================"

