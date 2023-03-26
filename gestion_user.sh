#!/bin/bash

source show_usage.sh 
source help.sh
source version.sh
source verouiller.sh
source deverouiller.sh
source modifierRep.sh
source yadd.sh
source menu.sh 
source ajouteruser.sh
source supprimeruser.sh


Test_arg()
{	
	if [$# -ne "1" ];then
	echo "Il n'existe pas au moins un argument !"
	fi
	show_usage

}

while getopts "nNd:hvgm" option
do
echo "getopts a trouvé l'option $option"
case $option in
	h)
		HELP
	;;
	

	v)
		version
	;;


	n)
		verouiller $1
	;;


	N)
		deverouiller $1
	;;

	d)
		modifierRep $2 $3
	;;
	g)
		yadd
	;;
	

	m)
	#clear
		menu

		while (true)
	do

		echo "Votre choix : "
	read choice
	case $choice in

			1)
			clear
			show_usage
			menu
			;;

			2)
			clear
			HELP
			menu
			;;

			3)
			clear
			version
			menu
			;;

         		 	 4)
			clear
			verouiller
			menu
			;;

			5)
			clear
			read $user
			deverouiller $user
			echo "user unlocked"
			menu
			;;

			6)
			clear
			read $user1
			read $user2
			modifierRep $1 $2
			echo "repertoire modifié"	
			menu
			;;
			7)
			clear
			yadd
			menu
			;;

			8)
			clear
			ajouteruser
			menu
			;;
			
			
			
			
			
			9)
			clear
			supprimeruser
			menu
			;;
			
			10)
			clear
			echo "Au revoir AMIRA ET CHAYMA "
			exit
			;;

	
	esac

	done

	;;
	


esac
done
exit 0
