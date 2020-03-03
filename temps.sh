#! /bin/bash
while :
do
echo "-------------------------------------------------------"
echo "*************************menu Temps**************************"
echo "tapez 0 pour quitter"
echo "-day"
echo "-week"
echo "-before-week"
echo "-month"
echo "-year"
echo "-help"
echo "veuillez saisir votre commande"
echo "-------------------------------------------------------"
echo "-------------------------------------------------------"
read choix
case $choix in
*-day)
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 1
;;
*-week)
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 7
;;
*-before-week)
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / +mtime 7
;;
*-month)
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 30
;;

*-year)
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
find  / -mtime 360

;;
*-help)
   help 
;;
0)
echo "retour au menu principale"

 exit 0
  ;;

esac
done

