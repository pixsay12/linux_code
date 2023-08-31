echo -n "enter integer: "
read n1


echo -n "enter second integer: "
read n2


sum=$(($n1+$n2))
mul=$(($n1*$n2))
echo "total penjumlahan $sum"
echo "total perkalian $mul"
echo -e "\n"


if [ $sum -gt $mul ]
then
    echo "$sum lebih dari $mul"


elif [[ $sum == $muk ]]
then
    echo "equal"


elif [ $sum -lt $mul ]
then  
    echo "$sum kurang dari $mul"
fi
