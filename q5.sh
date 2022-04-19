read string
let a=${#string[0]}
#echo ${string[0]:2:1}
for (( i=$a-1 ; i>=0 ; i-- ))
do
        echo -n ${string[0]:$i:1}
done
echo
for (( i=$a-1 ; i>=0 ; i-- ))
do
        echo -n ${string[0]:$i:1} | tr '[a-z][A-Z]' '[b-za][B-ZA]'
done
echo
let half=a/2
for (( i=$half - 1 ; i>=0 ; i-- ))
do
       echo -n ${string[0]:$i:1}
done
for (( i=$half ; i<a ; i++ ))
do
       echo -n ${string[0]:$i:1}
done
echo

