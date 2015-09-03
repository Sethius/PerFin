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
echo Student_Loan,20,$(date +%y%m%d),Payday,-55,Transfer | tee -a Student_Loan.txt Total.txt >/dev/null
echo Payday,-20,$(date +%y%m%d),Student_Loan,55,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Car_Loan,95,$(date +%y%m%d),Payday,-95,Transfer | tee -a Car_Loan.txt Total.txt >/dev/null
echo Payday,-95,$(date +%y%m%d),Car_Loan,95,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Ins,65,$(date +%y%m%d),Payday,-60,Transfer | tee -a Ins.txt Total.txt >/dev/null
echo Payday,-65,$(date +%y%m%d),Ins,60,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Gas,50,$(date +%y%m%d),Payday,-50,Transfer | tee -a Gas.txt Total.txt >/dev/null
echo Payday,-50,$(date +%y%m%d),Gas,50,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Phone,30,$(date +%y%m%d),Payday,-25,Transfer | tee -a Phone.txt Total.txt >/dev/null
echo Payday,-30,$(date +%y%m%d),Phone,25,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Food,140,$(date +%y%m%d),Payday,-140,Transfer | tee -a Food.txt Total.txt >/dev/null
echo Payday,-140,$(date +%y%m%d),Food,140,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Live,110,$(date +%y%m%d),Payday,-105,Transfer | tee -a Live.txt Total.txt >/dev/null
echo Payday,-110,$(date +%y%m%d),Live,105,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Pox,215,$(date +%y%m%d),Payday,-210,Transfer | tee -a Pox.txt Total.txt >/dev/null
echo Payday,-215,$(date +%y%m%d),Pox,210,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Emergency,215,$(date +%y%m%d),Payday,-210,Transfer | tee -a Emergency.txt Total.txt >/dev/null
echo Payday,-215,$(date +%y%m%d),Emergency,210,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo House,215,$(date +%y%m%d),Payday,-210,Transfer | tee -a House.txt Total.txt >/dev/null
echo Payday,-215,$(date +%y%m%d),House,210,Transfer | tee -a Payday.txt Total.txt >/dev/null
echo Munky,50,$(date +%y%m%d),Payday,-50,Transfer | tee -a Munky.txt Total.txt >/dev/null
echo Payday,-50,$(date +%y%m%d),Munky,50,Transfer | tee -a Payday.txt Total.txt >/dev/null


