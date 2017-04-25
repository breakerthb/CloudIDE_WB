#!/bin/sh

filename="catalog.md"

# Check paramters number
if [ $# != 0 ] ; then
    filename=$1
fi 

echo "# Picture Catalogue" > $filename
echo "" >> $filename

for name in `find | grep png`
do

name=${name#*.}
# echo $name

LinkPath="https://raw.githubusercontent.com/breakerthb/CloudIDE_WB/master/PicBed$name"
echo $LinkPath

echo "<$LinkPath>" >> $filename
echo "" >> $filename

echo "![]($LinkPath)" >> $filename
echo "" >> $filename

done