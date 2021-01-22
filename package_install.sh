#!/bin/bash

# Ce script verifie si le système utilise apt or yum, puis installe un paquet dont le n,on est fourni via les commandes addaptées
read -p "Quel est le nom du paquet que vous voulez installer ?" PACKAGE_NAME

if command -v apt >/dev/null; then
  # checks if package exists with this name
  if apt show "^$PACKAGE_NAME$" >/dev/null; then
    # Installation du paquet
    echo "Installation du paquet $PACKAGE_NAME"
    sudo apt update
    sudo apt install -y $PACKAGE_NAME
  else
    echo "Aucun paquet n'existe avec ce nom"
  fi
elif command -v yum >/dev/null; then
  # checks if package exists with this name
  if yum show "^$PACKAGE_NAME$" >/dev/null; then
    # Installation du paquet
    echo "Installation du paquet $PACKAGE_NAME"
    sudo yum check-update
    sudo yum install -y $PACKAGE_NAME
  else
    echo "Aucun paquet n'existe avec ce nom"
  fi
else
  echo "Ni apt ni yuml ne sont disponible sur votre système : veuillez consulter votre administrateur"
fi

