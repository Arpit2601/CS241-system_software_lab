# /bin/bash
num_load()
{
   grep "num loads from remote cache" ./1/1.out ./2/2.out ./3/3.out > ./output/1.output
}
load_sum()
{
    grep "[^/][0-9]\{1,\}\b" ./output/1.output | awk 'NR==1 {for(i=1;i<=NF;i++){sum+=$i}}END{print sum}' >> ./output/2.output
    grep "[^/][0-9]\{1,\}\b" ./output/1.output | awk 'NR==2 {for(i=1;i<=NF;i++){sum+=$i}}END{print sum}' >> ./output/2.output
    grep "[^/][0-9]\{1,\}\b" ./output/1.output | awk 'NR==3 {for(i=1;i<=NF;i++){sum+=$i}}END{print sum}' >> ./output/2.output
}
a=$(pwd)
num_load $a
load_sum $a