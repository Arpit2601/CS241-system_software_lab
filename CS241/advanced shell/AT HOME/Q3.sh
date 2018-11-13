# #! /bin/bash
# #####################
# #shopt -s sets each option 
# ###extglob ---- If set, the extended pattern matching features described above (see Pattern Matching) are enabled.
# shopt -s extglob
# ##to find the maximum depth of directory
# depth=$(find . -type d -printf '%d\n' | sort -rn | head -1)
# ###############
# # #pathname=a/b/c
# # echo $(basename $pathname)
# # echo $(basename $(dirname $pathname))
# # echo $(basename $(dirname $(dirname $pathname)))
# # Output:
# # c
# # b
# # a
# echo $depth
# string="*/*"
# for j in {1..3..1}
# do
#     # echo $string
#     g=$string".exe"
#     h=$string".EXE"
#     # echo $g
#     for f in $g
#     do
#         dir="$(basename "$(dirname "$f")")"
#         file="$(basename "${f%.*}")"
#         if [ "$dir" = "$file" ]
#         then
#             echo $dir--$file
#             rm  "$f"
#         fi
#     done
#     for f in $h
#     do
#         dir="$(basename "$(dirname "$f")")"
#         file="$(basename "${f%.*}")"
#         if [ "$dir" = "$file" ]
#         then
#             echo $dir--$file
#             rm  "$f"
#         fi
#     done
#     # echo $string
#     string+="/*"
# done
# ###to remove .exe file in this directory
# b=$(ls *.{exe,EXE} | grep $(basename $a))
# rm -f $b

# find . -name "virusdefintion.virus" > a.txt
# while read name 
# do
#     cat $name
# done < a.txt
a=$(find . -name virusdefinition.virus)
for i in $a
do
	while read line
	do
		for word in $line
		do
			rm $word
		done
	done < $i
done
