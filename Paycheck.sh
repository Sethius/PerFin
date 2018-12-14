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
echo Car,73,$(date +%y%m%d),Payday,-73,Transfer | tee -a Car.txt Total.txt >/dev/null
echo Payday,-73,$(date +%y%m%d),Car,73,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Gas,130,$(date +%y%m%d),Payday,-130,Transfer | tee -a Gas.txt Total.txt >/dev/null
echo Payday,-130,$(date +%y%m%d),Gas,130,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Phone,18,$(date +%y%m%d),Payday,-18,Transfer | tee -a Phone.txt Total.txt >/dev/null
echo Payday,-18,$(date +%y%m%d),Phone,18,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Live,198,$(date +%y%m%d),Payday,-198,Transfer | tee -a Live.txt Total.txt >/dev/null
echo Payday,-198,$(date +%y%m%d),Live,198,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Emergency,153,$(date +%y%m%d),Payday,-153,Transfer | tee -a Emergency.txt Total.txt >/dev/null
echo Payday,-153,$(date +%y%m%d),Emergency,153,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Extras,83,$(date +%y%m%d),Payday,-83,Transfer | tee -a Extras.txt Total.txt >/dev/null
echo Payday,-83,$(date +%y%m%d),Extras,83,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Gaming,15,$(date +%y%m%d),Payday,-15,Transfer | tee -a Gaming.txt Total.txt >/dev/null
echo Payday,-15,$(date +%y%m%d),Gaming,15,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Internet,25,$(date +%y%m%d),Payday,-25,Transfer | tee -a Internet.txt Total.txt >/dev/null
echo Payday,-25,$(date +%y%m%d),Internet,25,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo HOA,140,$(date +%y%m%d),Payday,-140,Transfer | tee -a HOA.txt Total.txt >/dev/null
echo Payday,-140,$(date +%y%m%d),HOA,140,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo SDGE,50,$(date +%y%m%d),Payday,-50,Transfer | tee -a SDGE.txt Total.txt >/dev/null
echo Payday,-50,$(date +%y%m%d),SDGE,50,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Debts,78,$(date +%y%m%d),Payday,-78,Transfer | tee -a Debts.txt Total.txt >/dev/null
echo Payday,-78,$(date +%y%m%d),Debts,78,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Invest,78,$(date +%y%m%d),Payday,-78,Transfer | tee -a Invest.txt Total.txt >/dev/null
echo Payday,-78,$(date +%y%m%d),Invest,78,Transfer | tee -a Payday.txt Total.txt >/dev/null