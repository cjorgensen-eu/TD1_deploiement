#!/bin/bash

# Ce script ajoute un groupe dont le nom est fourni au clavier

read -p "Quel est le nom du groupe que vous souhaitez ajouter ?" GROUPNAME

echo "Ajout de l'utilisateur $GROUPNAME"

sudo addgroup $GROUPNAME


