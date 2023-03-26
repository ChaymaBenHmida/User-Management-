menu(){
	
	echo "1-	Afficher comment utiliser la fonction gestion d'utilisateur"
	echo "2-	Pour afficher le help détaillé à partir d’un fichier texte"
	echo "3-	Afficher le nom des auteurs et version du code."
	echo "4-	Verouiller un utilisateur"
	echo "5-	Déverouiller un utilisateur"
	echo "6-	Modifier le repertoire personnel."
	echo "7-	Afficher le menu graphique YAD "
	echo "8-	Ajouter"
	echo "9-  Supprimer"
	echo "10- Quitter"
		
	
}

if [[ $# -eq "0" ]]; then
	show_usage
	exit
fi

