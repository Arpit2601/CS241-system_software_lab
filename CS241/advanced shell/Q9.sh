#! /bin/bash
# cat /var/log/auth.log | grep "systemd: pam_unix(systemd-user:session): session opened for user mcmhod20" > opentime.txt
# cat /var/log/auth.log | grep "systemd: pam_unix(systemd-user:session): session closed for user mcmhod20" > closedtime.txt
# time=$(awk 'NR==1 {print $3}' opentime.txt)
# time2=$(awk 'NR==1 {print $3}' closedtime.txt)
# DIFF= $(($time-$time2))
# echo "Duration: $(($DIFF / 3600 )) hours $((($DIFF % 3600) / 60)) minutes $(($DIFF % 60)) seconds"
cat auth.log | grep sonal | awk '{if($8=="opened" || $8=="closed"){print $3}}' | awk 'BEGIN{FS=":"}{if(NR%2==0){hoff=$1;moff=$2;soff=$3;time+=(hoff-hon)*3600+(moff-mon)*60+(soff-son)}else{hon=$1;mon=$2;son=$3}}END{print "TOTAL "time" sec"}'
cat auth.log | awk '{if($8=="opened" && $11=="sonal"){printf "%s",$3 >>"test.txt"}}{if($8=="closed" && $11="sonal"){print " "$3 >> "test.txt"}}'
sed -i 's/:/ /g' test.txt
a=$(awk '{sum=sum+($1-$4)*3600+($2-$5)*60+($3-$6)}END{print -1*sum}' test.txt)
echo $((24*60*60-$a))
rm test.txt