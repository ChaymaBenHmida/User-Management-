#preparation d'interface graphique
yadd(){

yad --text="Menu Projet 11" \
			--center \
			--image="back.jpg" \
		--button=gtk-cancel:1 \
		--button=gtk-help:2 \
		--button="version":3 \
		--button="verouiller":4 \
		--button="deverouiller":5 \
		--button="modifier le repertoire personnel":6 \
		--button="afficher menu textuel":7 \
		--button="ajouter":8 \					--button="supprimer":9\

		boutton=$?


			[[ $boutton -eq 1 ]] && exit 0


			if [[ $boutton -eq 2 ]]; then
                        cat help.txt
                        yadd

                        elif  [[ $boutton -eq 3 ]]; then
                        version $1
                        yadd
                        
                        elif  [[ $boutton -eq 4 ]]; then
                        verouiller $1
                        yadd

                        elif  [[ $boutton -eq 5 ]]; then
                        deverouiller $1
                        yadd

                        elif  [[ $boutton -eq 6 ]]; then
                        modifierRep $1 $2 $3

                        yadd
                        
                       
                       elif  [[ $boutton -eq 7 ]]; then
                       menu
                       yadd
                       elif  [[ $boutton -eq 8 ]]; then
                      ajouteruser $user
                       yadd
                       elif  [[ $boutton -eq 9 ]]; then
                       supprimeruser $user
                       yadd
                        
                       



                       
fi


}







