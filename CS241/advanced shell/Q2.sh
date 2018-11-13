#! /bin/bash
#not sure
# /usr/bin/usb-devices | grep usb-storage
# a=$(lsblk | grep sdb)
# if [ -z "$a" ]
# then
# 	echo No device
# else
# 	echo $a
# fi
# while [ 1 ]
# do
# 	sleep 1
# 	df|if grep -q /dev/sdb; then echo Yes; else echo No; fi 
# done
# exit

temp=$(lsusb | wc -l)
a=$(lsusb | wc -l)
while [ 1 ]
do
	temp=$a
	a=$(lsusb | wc -l)

	if [[ a -gt temp ]]
	then
		echo plugged
	fi
	if [[ a -lt temp ]]
	then
		echo unplugged
	fi
done
# -n
#    string is not null.
# -z
#   string is null, that is, has zero length