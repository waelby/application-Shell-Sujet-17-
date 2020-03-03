#! /bin/bash
while :
do
echo "-------------------------------------------------------"
echo "*************************menu**************************"
echo "tapez 0 pour quitter"
echo "-search <<extension>>"
echo "-temps"
echo "-tmp"
echo "-per"
echo "-s"
echo "-help"
echo "veuillez saisir votre commande"
echo "-------------------------------------------------------"
echo "-------------------------------------------------------"
read choix
case $choix in


*-search)
echo "veuillez saisir votre extension"
read ext
find -O3 -L -name "*.$ext"
;;
*-temps)
./temps.sh
;;
*-tmp)
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
./tmp.sh

;;

*-per)
a=$( ls -Al | wc -l )
b=$( ls -lRrt | find -iname "*~.*" | wc -l )
echo "le nombre totale de fichiers est : $a"
echo "le nombre de fichiers qui finissent par ~ est : $b"
c=$((100*$b/$a))

echo "($b / $a)*100 =  $c % "
;;
*-s)


Date=$(date +%F)
a=$( ls -Al | wc -l )
b=$( ls -lRrt | find -iname "*~.*" | wc -l ) 
c=$((100*$b/$a))

test3=$(echo "$Date $c%" >> fichier.txt   )


;;
*-help)
   help 
;;
0)
echo "L'utilisateur $USER à quitter le programme"
echo "Merci et à bientot"
 exit 0
  ;;

esac
done

