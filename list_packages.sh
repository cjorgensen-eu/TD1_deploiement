#!/bin/bash

# Ce script liste les paquets installés

if command -v apt >/dev/null; then
  sudo apt list --installed
elif command -v yum >/dev/null; then
  sudo yum list installed
else
  echo "Ni apt ni yuml ne sont disponible sur votre système : veuillez consulter votre administrateur"
fi

