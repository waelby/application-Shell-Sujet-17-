#! /bin/bash

yad --center --width=500 --height=125 --text "Would you like to run the app ?" \
---button=gtk-no:1 --button=gtk-yes:0 --buttons-layout=center
while :
do
find -iname "*~.*"
yad --center --width=500 --height=125 --text="voulez vous supprimer les fichiers (yes or no) :" \
--button="yes":1 \
--button="no":2 \
--button="-help":3  

foo=$?

if [[ $foo -eq 1 ]]; then
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
rm -r $(find -iname "*~.*")

elif [[ $foo -eq 2 ]]; then
echo "retour au menu principale"
 exit 0


elif [[ $foo -eq 3 ]]; then
 help 

else
cancel && exit 0

fi
done
