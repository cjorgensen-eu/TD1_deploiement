#!/bin/bash

# Ce script verifie si le système utilise apt or yum, puis installe openstack via les commandes addaptées

if command -v apt >/dev/null; then
  sudo apt -y update
  echo "installation de pip"
  sudo apt install -y python-dev python-pip
  sudo pip install --upgrade pip
  echo "installation d'openstack"
  sudo pip install python-openstackclient
elif command -v yum >/dev/null; then
  sudo yum check-update
  echo "installation de pip"
  sudo yum install -y python-devel python-pip
  sudo pip install --upgrade pip
  echo "installation d'openstack"
  sudo pip install python-openstackclient
else
  echo "Ni apt ni yuml ne sont disponible sur votre système : veuillez consulter votre administrateur"
fi

