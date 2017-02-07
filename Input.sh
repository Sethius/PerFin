#!/bin/bash

#Initial setup, Parses input from the format 
#+Account,Amount,Date,Account2,Amount2,Note



v=$1
IFS=, read -a v <<<"$v"
text=$(printf '%s\n' "${v[0]}")
Transfer=$(printf '%s\n' "${v[5]}")

#Determines which account (.txt file) will get the update

echo $1 >> $text.txt

#If a transfer, determines which account will get the counter-line
#Also adds counter-line to Total.txt
if [ "$Transfer" = "Transfer" ]
 then
  echo $(printf '%s\n' "${v[3]}"),$(printf '%s\n' "${v[4]}"),$(printf '%s\n' "${v[2]}"),$(printf '%s\n' "${v[0]}"),$(printf '%s\n' "${v[1]}"),$(printf '%s\n' "${v[5]}") >> $(printf '%s\n' "${v[3]}").txt
 echo $(printf '%s\n' "${v[3]}"),$(printf '%s\n' "${v[4]}"),$(printf '%s\n' "${v[2]}"),$(printf '%s\n' "${v[0]}"),$(printf '%s\n' "${v[1]}"),$(printf '%s\n' "${v[5]}") >> Total.txt
fi

#Adds a copy of initial input to Total.txt
echo "$1" >> Total.txt

