
#!/bin/bash

# Ce script ajoute un utilisateur dont le nom est fourni au clavier

read -p "Quel est le nom de l'utilisateur que vous souhaitez ajouter ?" USERNAME

echo "Ajout de l'utilisateur $USERNAME"

sudo adduser $USERNAME


