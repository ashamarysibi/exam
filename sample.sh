echo "enter the value"
read value
r='[a-zA-Z]'
if [[ "$value" =~ $r ]]
then 
echo "$value ia alphabet"
if [[ "$value" == *[AEIOUaeiou]* ]]
then
echo "$value is vowel"
else
echo "$value is consonant"
fi
else
echo "$value is a number"
if [ "$value" -eq 0 ]
then 
echo "$value is equal to 0"
elif [ $(( $value % 2 )) -eq 0 ]
then
echo "$value is even"
else
echo "$value is odd"
fi
i=2
while [ $i -lt `expr $value / 2` ]
do
flag=0
if [ $(( $value % $i )) -eq 0 ]
then
flag=1
fi 
done
if [ $flag -eq 1 ]
then
echo "$value is not prime"
else
echo "$value is prime"
fi 
fi
