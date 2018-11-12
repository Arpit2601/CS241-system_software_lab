#! /bin/bash
#install imagemagick
#in /etc/Imagemagick/policy.log file change coder policy to read|write in place of none
# list=$(ls)
# for image in $list
# do
#     convert $image "$image".pdf
# done
# rm *jpg *jpeg
# mkdir /home/arpit/images
# mv *.pdf /home/arpit/images
# du -sh /home/arpit/images/

cd nature_images
for f in *.jpg
do
	convert ./"$f" ./"${f%.jpg}.pdf"
done
for f in *.jpeg
do
	convert ./"$f" ./"${f%.jpeg}.pdf"
done
rm *.jpg *.jpeg
size=$(ls -lh | grep total | awk '{print $2}')
echo The total size is $size
for f in *.pdf
do
	convert $f -resize 50% $f
done
size2=$(ls -lh | grep total | awk '{print $2}')
echo The total size is $size2
# //how to remove extension of file name
# $ filename=foo.txt
# $ echo "${filename%.*}"
# foo