#!/bin/bash

# Ce script verifie si le système utilise apt or yum, puis installe git via les commandes addaptées

if command -v apt >/dev/null; then
  sudo apt update
  sudo apt install -y git-all
elif command -v yum >/dev/null; then
  sudo yum check-update
  sudo yum install -y git
else
  echo "Ni apt ni yuml ne sont disponible sur votre système : veuillez consulter votre administrateur"
fi

