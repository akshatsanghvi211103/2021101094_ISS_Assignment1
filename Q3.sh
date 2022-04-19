wc -c $1 | awk '{print $1}'
nolines=$(wc -l $1 | awk '{print $1}')
echo $nolines
nowords=$(wc -w $1 | awk '{print $1}')
echo $nowords
word_count()
{
	wc -w $1 | awk '{print $1}'
}
for (( i=0 ; i<$nolines ; i++ ))
do
        read line
        echo $line > line.txt
        #echo $line
        read -a words <line.txt
        num=$(word_count "line.txt")
        let c=$i+1
        echo Line No: $c"-Count of Words:" $num
done<$1
awk '{ for(i=1;i<=NF;i++) print $i}' $1 | sed "s/[^A-Za-z']//g" | awk '{arr[$0]++;k[NR]=$0} END { for(i=1;i<=NR;i++) print k[i], arr[k[i]]}' | awk '{ if(!array[$0]++) print}' | awk '{print "Word:" , $1, "-Count of repetition:" , $2}'
rm line.txt
