#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Nandani Singh

PACKAGE="git"

echo "Checking if $PACKAGE is installed..."
echo "-------------------------------------"

# Check if Git is installed
if git --version &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    git --version
else
    echo "$PACKAGE is NOT installed."
fi

echo "-------------------------------------"

# Case statement for description
case $PACKAGE in
    git)
        echo "Git: A distributed version control system used to track code changes."
        ;;
    vlc)
        echo "VLC: A free and open source media player."
        ;;
    python)
        echo "Python: A powerful programming language."
        ;;
    *)
        echo "Unknown software."
        ;;
esac
