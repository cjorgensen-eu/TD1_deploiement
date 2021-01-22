#!/bin/bash

# Ce script verifie si le système utilise apt or yum, puis suprime un paquet dont le nom est fourni via les commandes addaptées

read -p "Quel est le nom du paquet que vous voulez suprimer ?" PACKAGE_NAME

INSTALLED=$(dpkg-query -W --showformat='${Status}\n' $PACKAGE_NAME|grep "install ok installed")

if command -v apt >/dev/null; then
  # checks if package exists with this name
  if [[ "" != $INSTALLED ]]; then
    # Installation du paquet
    echo "Supression du paquet $PACKAGE_NAME"
    sudo apt remove $PACKAGE_NAME
  else
    echo "Le paquet $PACKAGE_NAME n'est pas installé"
  fi
elif command -v yum >/dev/null; then
  # checks if package exists with this name
  if [[ "" != $INSTALLED ]]; then
    # Installation du paquet
    echo "Supression du paquet $PACKAGE_NAME"
    sudo yum remove $PACKAGE_NAME
  else
    echo "Le paquet $PACKAGE_NAME n'est pas installé"
  fi
else
  echo "Ni apt ni yuml ne sont disponible sur votre système : veuillez consulter votre administrateur"
fi

