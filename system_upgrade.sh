#!/bin/bash

# Ce script met à jour le système

if command -v apt >/dev/null; then
  sudo apt update
  sudo apt -y upgrade
elif command -v yum >/dev/null; then
  sudo yum check-update
  sudo yum -y upgrade
else
  echo "Ni apt ni yuml ne sont disponible sur votre système : veuillez consulter votre administrateur"
fi

