#!/bin/sh

if ! [ $1 ] || ! [  $2 ];then
	echo Invalid input
	exit 0
elif [ $1 -le 0 -o $2 -le 0 ];then
	echo Input must be greater than 0
	exit 0
fi
row=1
col=1
while [ $row -le $1 ]
do
	while [ $col -le $2 ]
	do
		printf "$row*$col=`expr $row \* $col`\t"
		col=`expr $col + 1`
	done
	printf "\n"
	col=1
	row=`expr $row + 1`
done

