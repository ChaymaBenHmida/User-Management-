
#!/bin/bash
ajouteruser()
{
echo "donner le nom de l'utilisateur"
read user
sudo adduser $user >>liste.txt
}
