read line
echo $line > line1.txt
sed -i 's/,/ /g' line1.txt
#awk '{print $1}' $line
read -a num < line1.txt
let len=${#num[*]}
for (( i=0 ; i<$len ; i++ ))
do
	for (( j=0 ; j<$len-1 ; j++ ))
	do
		if [[ ${num[$j]} -gt ${num[$j+1]} ]]
		then
			let temp=${num[$j]}
                        let num[$j]=${num[$j+1]}
                        let num[$j+1]=$temp
		fi
	done
done
echo ${num[*]}
rm line1.txt
