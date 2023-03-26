

#!/bin/sh

deverouiller(){
echo "Donner le nom d'utilisateur a déverouiller :"
	read user 
	sudo usermod -U $user
	supprimeruser
}

