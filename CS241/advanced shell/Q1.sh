#! /bin/bash
printf "Time\t\tMemory\t\tDisk\t\tCPU\n"
end=$((SECONDS+3600))
COUNTER=0
while [ $SECONDS -lt $end ]
do
    MEMORY=$(free -m | awk 'NR==2{printf "\t\t%.2f%%\t\t", $3*100/$2 }')
    # DISK=$(df -h | awk '$NF=="/"{printf "%s\t\t", $5}')
    DISK=$(df -h | awk '{if($6=="/"){printf "%s\t\t",$5}}')
    CPU=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')#uptime can also be used
    echo "$COUNTER$MEMORY$DISK$CPU"
    ((COUNTER+=5))
    sleep 5
done
#use df --total in DISK part
#free -m display amount of memory in megabytes
# -b  :Batch-mode operation
#             Starts top in Batch mode, which could be useful for sending
#             output from top to other programs or to a file.  In this mode,
#             top will not accept input and runs until the iterations limit
#             you've set with the `-n' command-line option or until killed.
#   -n  :Number-of-iterations limit as:  -n number
#             Specifies the maximum number of iterations, or frames, top
#             should produce before ending
# 1. WHAT IS SWAP SPACE
# 	Swap space in Linux is used when the amount of physical memory (RAM) is full. If the system needs more memory resources and the RAM is full, inactive pages in memory are moved to the swap space. While swap space can help machines with a small amount of RAM, it should not be considered a replacement for more RAM. Swap space is located on hard drives, which have a slower access time than physical memory.

# 2. FREE COMMAND
# 	-> free displays the details of memory related to your system
# 	-> without any flag, it shows swap memory and physical memory details (see man free)
# 	-> free -s5 will display comments continously after every 5 seconds

# 3. DF COMMAND
# 	df command that displays the amount of disk space available on the file system containing each file name argument.
# 	df <filename>
# -tells disk space on the file system that contains this file
#FOR cpu PART
#iostat
#mpstat
#use free -h to get both memory
#