#!/bin/bash

# Ce script indique lestatut d'un service dont le nom est fourni au clavier

read -p "Quel est le nom du service que vous souhaitez connaitre le statut ?" SERVICENAME

service $SERVICENAME status


