#! /bin/bash
cat /var/log/auth.log | grep "systemd: pam_unix(systemd-user:session): session opened for user mcmhod20" > opentime.txt
cat /var/log/auth.log | grep "systemd: pam_unix(systemd-user:session): session closed for user mcmhod20" > closedtime.txt
time=$(awk 'NR==1 {print $3}' opentime.txt)
time2=$(awk 'NR==1 {print $3}' closedtime.txt)
DIFF= $(($time-$time2))
echo "Duration: $(($DIFF / 3600 )) hours $((($DIFF % 3600) / 60)) minutes $(($DIFF % 60)) seconds"