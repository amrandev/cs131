#!/bin/bash
input="../2019-01-h1.csv"

#Check if the input file exists
if [ ! -f "$input" ]; then
  echo "Input file '$input' not found"
  exit 1
fi

#Get the current timestamp for naming output files
timestamp=$(date "+%F-%T")

#Define the vendor IDs that we want to process
vendor_ids=("1.0" "2.0" "4.0")

#Loop over each vendor id and create a corresponding CSV file
for vendor in "${vendor_ids[@]}"; do

    output="$timestamp-$vendor.csv"

    grep "^$vendor," "$input" > "$output"
    echo "$output" >> .gitignore
done
wc "$timestamp-1.0.csv" "$timestamp-2.0.csv" "$timestamp-4.0.csv" > ws4.txt

#Add a blank line to ws4.txt for readability
echo "" >> ws4.txt

#Add the contents of .gitignore to ws4.txt
cat .gitignore >> ws4.txt
