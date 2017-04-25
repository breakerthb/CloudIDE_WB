#!/bin/sh

OldName="prt.png"

# Check paramters number
if [ $# != 0 ] ; then
    OldName=$1
fi 

# Get current year
Year=`date +%Y`

# Check whether the file exist
if [ ! -f "$OldName" ]; then
    echo "File $OldName is not exist!"
    exit 0
fi 

LinkPath="https://raw.githubusercontent.com/breakerthb/CloudIDE_WB/master/PicBed/$Year"

# Get new file name
NewName=`date +%s`
NewName="$NewName.png"

echo $NewName

mv prt.png $NewName
mv $NewName $Year/$NewName

echo "NewPicName:"
echo "$LinkPath/$NewName"