#!/bin/bash

#Prompt asks how much a paycheck contained

echo "How much is the paycheck?"
read paycheck

#Puts money into Payday.txt
echo Payday,$paycheck,$(date +%y%m%d),,,Paycheck >> Payday.txt
echo Payday,$paycheck,$(date +%y%m%d),,,Paycheck >> Total.txt

#The following transfer money from Payday to the other accounts as well as recording
#+ the transfer in Total.txt

##Some of these will need to be updated periodically to reflect changes in priority
echo Mortgage,738,$(date +%y%m%d),Payday,-738,Transfer | tee -a Mortgage.txt Total.txt >/dev/null
echo Payday,-738,$(date +%y%m%d),Mortgage,738,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Car,95,$(date +%y%m%d),Payday,-95,Transfer | tee -a Car.txt Total.txt >/dev/null
echo Payday,-95,$(date +%y%m%d),Car,95,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Gas,120,$(date +%y%m%d),Payday,-120,Transfer | tee -a Gas.txt Total.txt >/dev/null
echo Payday,-120,$(date +%y%m%d),Gas,120,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Phone,18,$(date +%y%m%d),Payday,-18,Transfer | tee -a Phone.txt Total.txt >/dev/null
echo Payday,-18,$(date +%y%m%d),Phone,18,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Live,114,$(date +%y%m%d),Payday,-114,Transfer | tee -a Live.txt Total.txt >/dev/null
echo Payday,-114,$(date +%y%m%d),Live,114,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Emergency,166,$(date +%y%m%d),Payday,-166,Transfer | tee -a Emergency.txt Total.txt >/dev/null
echo Payday,-166,$(date +%y%m%d),Emergency,166,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Extras,96,$(date +%y%m%d),Payday,-96,Transfer | tee -a Extras.txt Total.txt >/dev/null
echo Payday,-96,$(date +%y%m%d),Extras,96,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Gaming,15,$(date +%y%m%d),Payday,-15,Transfer | tee -a Gaming.txt Total.txt >/dev/null
echo Payday,-15,$(date +%y%m%d),Gaming,15,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Internet,40,$(date +%y%m%d),Payday,-40,Transfer | tee -a Internet.txt Total.txt >/dev/null
echo Payday,-40,$(date +%y%m%d),Internet,40,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo HOA,150,$(date +%y%m%d),Payday,-150,Transfer | tee -a HOA.txt Total.txt >/dev/null
echo Payday,-150,$(date +%y%m%d),HOA,150,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo SDGE,50,$(date +%y%m%d),Payday,-50,Transfer | tee -a SDGE.txt Total.txt >/dev/null
echo Payday,-50,$(date +%y%m%d),SDGE,50,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Debts,91,$(date +%y%m%d),Payday,-91,Transfer | tee -a Debts.txt Total.txt >/dev/null
echo Payday,-91,$(date +%y%m%d),Debts,91,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Invest,91,$(date +%y%m%d),Payday,-91,Transfer | tee -a Invest.txt Total.txt >/dev/null
echo Payday,-91,$(date +%y%m%d),Invest,91,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Taxes,58,$(date +%y%m%d),Payday,-58,Transfer | tee -a Taxes.txt Total.txt >/dev/null
echo Payday,-58,$(date +%y%m%d),Taxes,58,Transfer | tee -a Payday.txt Total.txt >/dev/null