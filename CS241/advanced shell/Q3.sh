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
FIGHT_SALITY()
{
	if [ -e virusdefinition.virus ]
	then
		line=$(cat virusdefinition.virus)
		for w in $line
		do
			rm $w
		done	
	fi	 
	if [ -e $1.EXE ]
	then 
		rm $1.EXE
	fi
	if [ -e $1.exe ]
	then	
		rm $1.exe
	fi	
	if ls -l | grep -q ^d
	then
		dir=$(ls -l | grep ^d | awk '{print $9}' )
		#echo "$dir"
		for d in $dir
		do
			cd $d/
			FIGHT_SALITY $d
			cd ..
		done
	fi		 
}

a=$(pwd)
FIGHT_SALITY a
