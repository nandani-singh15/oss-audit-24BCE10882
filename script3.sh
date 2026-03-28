#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Nandani Singh

echo "========== Directory Audit Report =========="

# List of directories (Git Bash compatible)
DIRS=("/c/Users" "/c/Windows" "/c/Program Files" "/tmp")

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "-------------------------------------------"
        echo "Directory : $DIR"
        echo "Permissions: $PERMS"
        echo "Size       : $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

echo "-------------------------------------------"

# Check Git config directory
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    echo "Git config file found:"
    ls -l "$GIT_CONFIG"
else
    echo "Git config file not found"
fi

echo "==========================================="
