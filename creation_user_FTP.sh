cat Shell_Userlist.csv| while IFS="," read -r Id Prenom Nom Mdp Role; do

	if [ "$Id" = 'Id' ]; then
		continue
	fi

if [ $? -eq 0 ]; then
		useradd --badname "$Prenom.$Nom" -p $Mdp --shell /bin/false -m -d /home/"$Prenom.$Nom"
		echo "$Prenom.$Nom créé avec succès"

	else
		echo "Impossible de créer $Prenom.$Nom"
	fi

done
