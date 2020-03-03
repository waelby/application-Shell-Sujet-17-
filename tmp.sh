echo "*************************Tmp**************************"
echo "tout les fichier qui finissent par ~ "
find -iname "*~.*"
echo "voulez vous supprimer les fichiers (yes or no)"
read choix
case $choix in
*yes)
echo "tout les fichier qui finissent par ~ ont été supprimés avec succcés"
rm -r $(find -iname "*~.*")
;;
*no)
echo "retour au menu principale"
 exit 0
  ;;

esac
done

