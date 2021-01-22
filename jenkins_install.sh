#!/bin/bash

# Ce script verifie si le système utilise apt or yum, puis installe jenkins via les commandes addaptées

if command -v apt >/dev/null; then
  wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
  sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
  sudo apt update -y
  sudo apt install -y jenkins
elif command -v yum >/dev/null; then
  sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
  sudo yum upgrade -y
  sudo yum install -y jenkins java-1.8.0-openjdk-devel
  sudo systemctl daemon-reload
else
  echo "Ni apt ni yuml ne sont disponible sur votre système : veuillez consulter votre administrateur"
fi

