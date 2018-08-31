# 重命名当前文件夹下的文件名

```
#! /bin/bash

ARGS=2
ONE=1

if [ $# -ne "$ARGS" ]
then 
   
	echo "Usage : 'basename  $0' old-pattern new-pattern"
	exit  2
fi
number=0
for filename  in *$1*
do
   if [ -f "$filename" ]
   then
	 fname="$filename"
	 newname=`echo $fname | sed -e "s/$1/$2/g"`
	 mv "$fname" "$newname"
	 let "number += 1"
   fi
done
if [ "$number" -eq "$ONE" ]
then  
	echo "$number file renamed."
else
	echo "$number files renamed."
fi

exit 0

```
