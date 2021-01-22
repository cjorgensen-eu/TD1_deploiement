
#!/bin/bash

# Ce script prend une option d'administration en entrée et lance le script d'adminsitration adequat

read -p "Quelle commande d'administration système souhaitez-vous executer ? ('help' pour lister les options) " CMD

case "$CMD" in
  "installer_openstack")
    sh openstack_install.sh
    ;;
  "installer_git")
    sh git_install.sh
    ;;
  "installer_jenkins")
    sh jenkins_install.sh
    ;;
  "installer_paquet")
    sh package_install.sh
    ;;
  "maj_systeme")
    sh system_upgrade.sh
    ;;
  "afficher_paquets")
    sh list_packages.sh
    ;;
  "supprimer_paquet")
    sh package_delete.sh
    ;;
  "ajouter_utilisateur")
    sh add_user.sh
    ;;
  "ajouter_groupe")
    sh add_group.sh
    ;;
  "afficher_groupes_utilisateur")
    sh show_user_groups.sh
    ;;
  "statut_service")
    sh service_status.sh
    ;;
  "redemare_service")
    sh service_restart.sh
    ;;
  "active_service")
    sh service_switch.sh
    ;;
  "help")
    sh list_options.sh
    ;;
  *)
    echo "Commande inconnue !"
    ;;
esac




