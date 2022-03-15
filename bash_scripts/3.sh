#!/bin/bash
ip_array=(192.168.0.1:80 173.194.222.113:80 87.250.250.242:80)

for ip in "${ip_array[@]}"
do
	echo "$ip"
	for i in {1..5}
	do
		echo "$ip + $i"
	done
	echo
done

echo ${ip_array[@]}
