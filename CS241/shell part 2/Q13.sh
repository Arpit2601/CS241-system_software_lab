#!/bin/bash
touch /home/arpit/Downloads/sample.txt
file=/home/arpit/Downloads/sample.txt
trap "rm -f $file && echo file deleted; exit" 0 2 15
echo “pid is $$”
while (( COUNT < 10 ))
do
    sleep 1
    (( COUNT ++ ))
    echo $COUNT
done
exit 0
#$$ printd the pid of script
# sleep x will run the loop after every x seconds
# you can kill script in between using ctrl -c   ctrl -z   kill -9 pid
############
#trap "command to execute on receiving signal with number " (number of signal)
#echo somethin
#exit 0
###################
#trap does not catch SIGKILL and SIGSTOP signals
#trap "rm -f $file; exit" signal number
#on receiving signal delete the file and exit
#0 is success signal 2 is ctrl c signal 15 is termination signal    
#set -x to start debugging
#set +x to stop debugging
# to use command line use bash -x 
# to use shell use #! /bin/bash -x
# set -e makes the script stop immediately if any external program returns a non-zero exit status. This is useful if your script attempts to handle all error cases and where a failure to do so should be trapped.

# set -x was mentioned above and is certainly the most useful of all the debugging methods.

# set -n might also be useful if you want to check your script for syntax errors.