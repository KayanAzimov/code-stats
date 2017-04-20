#!/usr/bin/env bash

if [ $# -lt 1 ]; then
echo "usage: ./stats.sh project_name file_type[java, sh, js, yml, etc] [-V verbose] [-N no blank lines] "
exit
fi

echo "calculating..."
for line in $(find $1 -iname "*.$2" -print0 |  xargs -0 stat -f  "%z;%N" | sort -rn)
do  
    fileSize=$(echo $line | cut -d \; -f 1)
    fileName=$(echo $line | cut -d \; -f 2)
    
	if [[ $@ == **-N** ]]; then 
    	count=$(cat $fileName | sed '/^\s*$/d' | wc -l | awk '{ print $1 }')
    else
    	count=$(cat $fileName | wc -l | awk '{ print $1 }')	
	fi
    
	(( total += count ))
	
	if [[ $@ == **-V** ]]; then 
		echo "$fileName size: $fileSize lines: $count"
	fi
done
echo "total lines: $total"

