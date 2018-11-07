#! /bin/bash
#install imagemagick
#in /etc/Imagemagick/policy.log file change coder policy to read|write in place of none
list=$(ls)
for image in $list
do
    convert $image "$image".pdf
done
rm *jpg *jpeg
mkdir /home/arpit/images
mv *.pdf /home/arpit/images
du -sh /home/arpit/images/