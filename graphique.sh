#! /bin/bash

yad --center --width=500 --height=125 --text "Would you like to run the app ?" \
---button=gtk-no:1 --button=gtk-yes:0 --buttons-layout=center
while :
do
yad --center --width=500 --height=125 --text="Choose a command to launch :" \
--button="-search":1 \
--button="-temps":2 \
--button="-tmp":3 \
--button="-per":4 \
--button="-s":5 \
--button="-help":6 

foo=$?



if [[ $foo -eq 1 ]]; then
echo "veuillez saisir votre extension"
read ext
find -O3 -L -name "*.$ext"

elif [[ $foo -eq 2 ]]; then
./temps1.sh

elif [[ $foo -eq 3 ]]; then

./tmp1.sh

elif [[ $foo -eq 4 ]]; then
a=$( ls -Al | wc -l )
b=$( ls -lRrt | find -iname "*~.*" | wc -l )
echo "le nombre totale de fichiers est : $a"
echo "le nombre de fichiers qui finissent par ~ est : $b"
c=$((100*$b/$a))

echo "($b / $a)*100 =  $c % "


elif [[ $foo -eq 5 ]]; then

a=$( ls -Al | wc -l )
b=$( ls -lRrt | find -iname "*~.*" | wc -l ) 
c=$((100*$b/$a))

test3=$(echo " $c%" >> fichier.txt  | date +%F  >> fichier.txt )


elif [[ $foo -eq 6 ]]; then
 help 

else
cancel && exit 0

fi
done
