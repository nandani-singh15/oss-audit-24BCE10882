#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Nandani Singh

echo "Answer the following questions to generate your manifesto:"
echo ""

# Taking user input
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. What would you like to build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto.txt"

# Creating manifesto
echo "----------------------------------------" > $OUTPUT
echo "        Open Source Manifesto" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "Name: Nandani Singh" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in using tools like $TOOL to improve my skills." >> $OUTPUT
echo "For me, freedom means $FREEDOM, and it inspires me to learn and share knowledge." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it with the community." >> $OUTPUT
echo "" >> $OUTPUT
echo "Open source helps people collaborate and grow together." >> $OUTPUT

echo "----------------------------------------" >> $OUTPUT

# Display output
echo ""
echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
