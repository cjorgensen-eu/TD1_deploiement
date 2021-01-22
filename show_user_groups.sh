#!/bin/bash

# Ce script affiche les groupes d'un utilisateur dont le nom est fourni au clavier

read -p "Quel est le nom de l'utilisateur dont vous souhaitez connaiotre les groupes ?" USERNAME

echo "Groupes de l'utilisateur $USERNAME :"

groups $USERNAME


