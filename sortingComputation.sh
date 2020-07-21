#!/bin/bash -x
read -p "Enter first number : " a
read -p "Enter second number : " b
read -p "Enter third number : " c
echo $a $b $c

valOne=$(( $a+$b*$c ))
echo $valOne
valTwo=$(( $a*$b+$c ))
echo $valTwo
valThree=$(( $c+$a/$b ))
echo $valThree
valFour=$(( $a%$b+$c ))
echo $valFour

declare -A sortin
sortin[key1]=$valOne
sortin[key2]=$valTwo
sortin[key3]=$valThree
sortin[key4]=$valFour
echo ${sortin[@]}

counter=0
arr[((counter++))]=$valOne
arr[((counter++))]=$valTwo
arr[((counter++))]=$valThree
arr[((counter++))]=$valFour
echo ${arr[@]}

for i in ${arr[@]}
do
	echo "Descending order : $i"
done | sort -nr

for i in ${arr[@]}
do
	echo "Ascending order : $i"
done | sort -n
