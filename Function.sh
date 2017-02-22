#!/bin/bash


while true ; do
	#Function for input "Paycheck"
	paycheck () {
		~/Desktop/Hewitt_Private/PerFin/Paycheck.sh

	}

	#Function for input of new recording
	payOut () {
		~/Desktop/Hewitt_Private/Scripts/Testing_area/Accounting/Input.sh $Decision
	}

echo "Type \"Paycheck\" or use entry format Account,Amount,Date,Account2,Amount2,Note"

	read Decision

	if [ "$Decision" = "Paycheck" ]
		then
		paycheck
	else
		payOut
	fi
done