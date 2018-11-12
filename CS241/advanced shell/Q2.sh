#! /bin/bash
#not sure
# /usr/bin/usb-devices | grep usb-storage
a=$(lsblk | grep sdb)
if [ -z "$a" ]
then
	echo No device
else
	echo $a
fi
# -n
#    string is not null.
# -z
#   string is null, that is, has zero length