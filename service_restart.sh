#!/bin/bash

# Ce script redemarre un service dont le nom est fourni au clavier

read -p "Quel est le nom du service que vous souhaitez redemarer ?" SERVICENAME

sudo service $SERVICENAME restart && echo "Le service $SERVICENAME a été redémaré"


