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
./Input.sh Car,161,$(date +%y%m%d),Payday,-161,Transfer
./Input.sh Debts,-45,$(date +%y%m%d),Payday,45,Transfer
./Input.sh Emergency,250,$(date +%y%m%d),Payday,-250,Transfer
./Input.sh Extras,195,$(date +%y%m%d),Payday,-195,Transfer
./Input.sh Gaming,25,$(date +%y%m%d),Payday,-25,Transfer
./Input.sh Gas,120,$(date +%y%m%d),Payday,-120,Transfer
./Input.sh HOA,150,$(date +%y%m%d),Payday,-150,Transfer
./Input.sh Internet,42,$(date +%y%m%d),Payday,-42,Transfer
./Input.sh Invest,190,$(date +%y%m%d),Payday,-190,Transfer
./Input.sh Live,215,$(date +%y%m%d),Payday,-215,Transfer
./Input.sh Mortgage,568,$(date +%y%m%d),Payday,-568,Transfer
./Input.sh MunkyFred,58,$(date +%y%m%d),Payday,-58,Transfer
./Input.sh Phone,95,$(date +%y%m%d),Payday,-95,Transfer
./Input.sh SDGE,50,$(date +%y%m%d),Payday,-50,Transfer
./Input.sh Vacation,60,$(date +%y%m%d),Payday,-60,Transfer

echo

./All_Sum.sh

echo

