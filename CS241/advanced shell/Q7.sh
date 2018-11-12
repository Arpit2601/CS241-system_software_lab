#! /bin/bash
mkdir multiple_pdf 
COUNTER=1
COUNTER1=2
# pdftk Linux.Shell.Scripting.Cookbook.pdf cat $COUNTER-$COUNTER1 output out"$COUNTER".pdf
while [ $COUNTER -lt 384 -a $COUNTER1 -lt 384 ]
do
    pdftk Linux.Shell.Scripting.Cookbook.pdf cat $COUNTER-$COUNTER1 output out"$COUNTER".pdf
    let COUNTER=COUNTER+2 
    let COUNTER1=COUNTER1+2
done
mv out*.pdf multiple_pdf
mv multiple_pdf home/arpit/success/
