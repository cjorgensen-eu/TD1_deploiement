#!/bin/bash

# Ce script active ou désactive un service dont le nom est fourni au clavier, en fonction de son état courant

read -p "Quel est le nom du service que vous souhaitez activer / désactiver ?" SERVICENAME

if systemctl is-active --quiet $SERVICENAME; then
  service $SERVICENAME stop && echo "Le service $SERVICENAME a été désactivé"
else
  service $SERVICENAME start && echo "Le service $SERVICENAME a été activé"
fi



