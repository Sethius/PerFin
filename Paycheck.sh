#!/bin/bash

#Prompt asks how much a paycheck contained
echo "How much is the paycheck?"
read paycheck

#Puts money into Payday.txt
./Input.sh Payday,$paycheck,$(date +%y%m%d),,,Paycheck

#The following transfer money from Payday to the other accounts as well as recording
#+ the transfer in Total.txt

##Some of these will need to be updated periodically to reflect changes in priority

./Input.sh AAA,50,$(date +%y%m%d),Payday,-50,Transfer
./Input.sh Car,131,$(date +%y%m%d),Payday,-131,Transfer
./Input.sh Debts,88,$(date +%y%m%d),Payday,-88,Transfer
./Input.sh Emergency,220,$(date +%y%m%d),Payday,-220,Transfer
./Input.sh Extras,45,$(date +%y%m%d),Payday,-45,Transfer
./Input.sh Gaming,25,$(date +%y%m%d),Payday,-25,Transfer
./Input.sh Gas,120,$(date +%y%m%d),Payday,-120,Transfer
./Input.sh HOA,150,$(date +%y%m%d),Payday,-150,Transfer
./Input.sh Internet,42,$(date +%y%m%d),Payday,-42,Transfer
./Input.sh Invest,160,$(date +%y%m%d),Payday,-160,Transfer
./Input.sh Live,185,$(date +%y%m%d),Payday,-185,Transfer
./Input.sh Mortgage,568,$(date +%y%m%d),Payday,-568,Transfer
./Input.sh Phone,95,$(date +%y%m%d),Payday,-95,Transfer
./Input.sh SDGE,75,$(date +%y%m%d),Payday,-75,Transfer
./Input.sh Spouse,300,$(date +%y%m%d),Payday,-300,Transfer
./Input.sh Vacation,60,$(date +%y%m%d),Payday,-60,Transfer

echo

./All_Sum.sh

echo

