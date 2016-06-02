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
echo Rent,250,$(date +%y%m%d),Payday,-250,Transfer | tee -a Rent.txt Total.txt >/dev/null
echo Payday,-250,$(date +%y%m%d),Rent,250,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Ins,75,$(date +%y%m%d),Payday,-75,Transfer | tee -a Ins.txt Total.txt >/dev/null
echo Payday,-75,$(date +%y%m%d),Ins,75,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Gas,50,$(date +%y%m%d),Payday,-50,Transfer | tee -a Gas.txt Total.txt >/dev/null
echo Payday,-50,$(date +%y%m%d),Gas,50,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Phone,20,$(date +%y%m%d),Payday,-20,Transfer | tee -a Phone.txt Total.txt >/dev/null
echo Payday,-20,$(date +%y%m%d),Phone,20,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Food,140,$(date +%y%m%d),Payday,-140,Transfer | tee -a Food.txt Total.txt >/dev/null
echo Payday,-140,$(date +%y%m%d),Food,140,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Live,110,$(date +%y%m%d),Payday,-110,Transfer | tee -a Live.txt Total.txt >/dev/null
echo Payday,-110,$(date +%y%m%d),Live,110,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Emergency,365,$(date +%y%m%d),Payday,-365,Transfer | tee -a Emergency.txt Total.txt >/dev/null
echo Payday,-365,$(date +%y%m%d),Emergency,365,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo House,365,$(date +%y%m%d),Payday,-365,Transfer | tee -a House.txt Total.txt >/dev/null
echo Payday,-365,$(date +%y%m%d),House,365,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Munky,50,$(date +%y%m%d),Payday,-50,Transfer | tee -a Munky.txt Total.txt >/dev/null
echo Payday,-50,$(date +%y%m%d),Munky,50,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Gaming,15,$(date +%y%m%d),Payday,-15,Transfer | tee -a Gaming.txt Total.txt >/dev/null
echo Payday,-15,$(date +%y%m%d),Gaming,15,Transfer | tee -a Payday.txt Total.txt >/dev/null

