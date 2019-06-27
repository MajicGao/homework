#! /bin/bash
echo "please input filename"
# read filename
read FILENAME
if [ -c $FILENAME ] || [ -b $FILENAME ]
then
    cp $FILENAME /dev
else
    echo "It's not Charactor device file"
fi

