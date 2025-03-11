#!/bin/bash

#Check if first argument is empty
if [ -z "$1" ]; then
  echo "Usage: $0 input.txt [output.pdf]"
  exit 1
fi

#First argument is input file
input="$1"

#Second argument is optional name --> otherwise output.pdf
output_pdf="${2:-output.pdf}"

#Input validation
if [ ! -f "input"];then
   echo "Error: No file found"
   exit 1
fi

#Create temporary PostScript file
tempps="$(mktemp).ps"

#Converts text file to PostScript
enscript "$input" -p "$tempps"

#Converts PostScript to PDF
ps2pdf "$tempps" "$output_pdf"

#Remove temp file
rm -f "$tempps"
echo "PDF successfully created: $output_pdf"



