echo -e File name'\t\t'date'\t\t''time''\t\t'permission
echo __________ 		____ 			 ____ 			__________
echo
ls -l /home/arpit|awk 'NR!=1 {printf "%-20s%-20s%-20s%-20s%-20s\n", $9,$6,$7,$8,$1}'
echo
num=`ls -l /home/arpit|grep ^-|wc -l`
dirnum=`ls -l /home/arpit|grep ^d|wc -l` 
echo Total no of files: $num
echo Total no of directory: $dirnum
echo Total no of files: $num>>final_output.txt
echo Total no of directory: $dirnum>>final_output.txt