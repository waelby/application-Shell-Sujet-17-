#! /bin/bash

yad --center --width=500 --height=125 --text "Would you like to run the app ?" \
---button=gtk-no:1 --button=gtk-yes:0 --buttons-layout=center
while :
do
date
yad --center --width=500 --height=125 --text="menu Temps :" \
--button="-day":1 \
--button="-week":2 \
--button="-before-week":3 \
--button="-month":4 \
--button="-year":5 \
--button="-help":6 

foo=$?



if [[ $foo -eq 1 ]]; then
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 1

elif [[ $foo -eq 2 ]]; then
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 7

elif [[ $foo -eq 3 ]]; then

echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / +mtime 7

elif [[ $foo -eq 4 ]]; then
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 30


elif [[ $foo -eq 5 ]]; then
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 360


elif [[ $foo -eq 6 ]]; then
 help 

else
cancel && exit 0

fi
done
