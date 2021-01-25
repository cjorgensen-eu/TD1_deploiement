
#!/bin/bash

# Ce script prend une option d'administration en entrée et lance le script d'adminsitration adequat

read -p "Quelle commande d'administration système souhaitez-vous executer ? ('help' pour lister les options) " CMD

SCRIPTPATH=$(dirname "$0")

case "$CMD" in
  "installer_openstack")
    sh $SCRIPTPATH/openstack_install.sh
    ;;
  "installer_git")
    sh $SCRIPTPATH/git_install.sh
    ;;
  "installer_jenkins")
    sh $SCRIPTPATH/jenkins_install.sh
    ;;
  "installer_paquet")
    sh $SCRIPTPATH/package_install.sh
    ;;
  "maj_systeme")
    sh $SCRIPTPATH/system_upgrade.sh
    ;;
  "afficher_paquets")
    sh $SCRIPTPATH/list_packages.sh
    ;;
  "supprimer_paquet")
    sh $SCRIPTPATH/package_delete.sh
    ;;
  "ajouter_utilisateur")
    sh $SCRIPTPATH/add_user.sh
    ;;
  "ajouter_groupe")
    sh $SCRIPTPATH/add_group.sh
    ;;
  "afficher_groupes_utilisateur")
    sh $SCRIPTPATH/show_user_groups.sh
    ;;
  "statut_service")
    sh $SCRIPTPATH/service_status.sh
    ;;
  "redemare_service")
    sh $SCRIPTPATH/service_restart.sh
    ;;
  "active_service")
    sh $SCRIPTPATH/service_switch.sh
    ;;
  "help")
    sh $SCRIPTPATH/list_options.sh
    ;;
  *)
    echo "Commande inconnue !"
    ;;
esac




