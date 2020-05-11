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
./Input.sh Car,171,$(date +%y%m%d),Payday,-171,Transfer
./Input.sh Debts,-23,$(date +%y%m%d),Payday,23,Transfer
./Input.sh Emergency,281,$(date +%y%m%d),Payday,-281,Transfer
./Input.sh Extras,206,$(date +%y%m%d),Payday,-206,Transfer
./Input.sh Gaming,25,$(date +%y%m%d),Payday,-25,Transfer
./Input.sh Gas,120,$(date +%y%m%d),Payday,-120,Transfer
./Input.sh HOA,150,$(date +%y%m%d),Payday,-150,Transfer
./Input.sh Internet,40,$(date +%y%m%d),Payday,-40,Transfer
./Input.sh Invest,206,$(date +%y%m%d),Payday,-206,Transfer
./Input.sh Live,225,$(date +%y%m%d),Payday,-225,Transfer
./Input.sh Mortgage,568,$(date +%y%m%d),Payday,-568,Transfer
./Input.sh MunkyFred,46,$(date +%y%m%d),Payday,-46,Transfer
./Input.sh Phone,95,$(date +%y%m%d),Payday,-95,Transfer
./Input.sh SDGE,50,$(date +%y%m%d),Payday,-50,Transfer

echo

./All_Sum.sh

echo

