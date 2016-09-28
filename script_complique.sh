#!/bin/bash

#je crée ma fonction de création de dossier
creerDossier(){
	#$nouvsite est une référence à la variable crée 
	#lors de la lecture de la réponse de la 2ème question

	#je crée le dossier parent et les dossiers enfants
	mkdir -p $nouvsite/{font,css,img,js}

	#je crée les fichiers dans les dossiers respectifs 
	touch $nouvsite/index.html $nouvsite/css/style.css $nouvsite/js/script.js 
}


#et j'attend une réponse de l'utilisateur avec read, 
#réponse qui sera enregistré dans ma variable reponse, déclarée en même temps
read reponse

#je définis ma condition et le code à exécuter
if [ "$reponse" = "oui" ]; then
	#je repose une question
	echo "Comment tu veux l'appeler ?"
	#j'attend une nouvelle réponse que j'enregistre dans la variable
	#nouvsite que je déclare en même temps
	read nouvsite
	#j'appelle la fonction creerDossier, déclarée tout en haut
	#sans avoir besoin de rentrer de paramètres
	creerDossier
elif [ "$reponse" = "non" ]; then
	echo "Ben va tfaire en***** !!!"
else
	echo "moi pas comprendre. Recommence "
	bash script_complique.sh
fi

