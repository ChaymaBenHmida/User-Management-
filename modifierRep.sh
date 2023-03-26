
## arg1:ancien arg2:nouveau
modifierRep(){
mv /home/$1 /home/$2
usermod --home /home/$1 $2
}



