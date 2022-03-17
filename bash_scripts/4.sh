#!/bin/bash

rm log

ip_array=(192.168.0.1 173.194.222.113 87.250.250.242)

for ip in "${ip_array[@]}"
do
	echo "$ip" >> log
	for i in {1..5}
	do
		echo Attempt $i >> log
		nc -vz -w 1 $ip 80 >> log 2>&1
		if (($? != 0))
		then
			echo $ip >> error
    			break 2
		fi
	done
	echo >> log
done

echo ${ip_array[@]}
