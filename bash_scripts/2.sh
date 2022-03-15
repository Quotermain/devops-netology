#!/bin/bash
while ((1==1))
do
	echo Hello
	if (($? != 0))
	then
		echo Not Ok	
	else
		echo Ok
		break
	fi
done
