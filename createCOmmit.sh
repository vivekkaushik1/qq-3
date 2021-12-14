string=""
x=1
j=1
while [ $x -le 100 ]
do
 string="touch randomfile$((j+x)) && git add . && git commit -m '$((j+x)):randfile_$((j+x))'"
 echo $string
 eval "$string"
 x=$[$x+1]
#sleep 5.0
done
git push
