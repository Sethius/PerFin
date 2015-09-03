#!/bin/bash

#Parses all the lines in an input text file and outputs all transaction amounts
#+to a secondary text file
while IFS=, read -r -a input; do
 printf "%s\n" "${input[1]}"
done < $1 > Sum_output.txt

#Sums all the transaction amounts from secondary text file and outputs to screen
awk -F: '{sum += $0;} END {print sum;}' Sum_output.txt
echo "$sum"

#Removes secondary text file
rm ./Sum_output.txt
