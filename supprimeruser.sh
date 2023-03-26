#!/bin/bash
supprimeruser()
{
echo "donner le nom de l'utilisateur"
read nom
sudo deluser --remove-home $nom >>liste_user_v.txt
}
