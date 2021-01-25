
#!/bin/bash

# Ce script prend une option d'administration en entrée et lance le script d'adminsitration adequat

read -p "Quelle commande d'administration système souhaitez-vous executer ? ('help' pour lister les options) " CMD

case "$CMD" in
  "installer_openstack")
    sh /home/user/TD1_deploiement/openstack_install.sh
    ;;
  "installer_git")
    sh /home/user/TD1_deploiement/git_install.sh
    ;;
  "installer_jenkins")
    sh /home/user/TD1_deploiement/jenkins_install.sh
    ;;
  "installer_paquet")
    sh /home/user/TD1_deploiement/package_install.sh
    ;;
  "maj_systeme")
    sh /home/user/TD1_deploiement/system_upgrade.sh
    ;;
  "afficher_paquets")
    sh /home/user/TD1_deploiement/list_packages.sh
    ;;
  "supprimer_paquet")
    sh /home/user/TD1_deploiement/package_delete.sh
    ;;
  "ajouter_utilisateur")
    sh /home/user/TD1_deploiement/add_user.sh
    ;;
  "ajouter_groupe")
    sh /home/user/TD1_deploiement/add_group.sh
    ;;
  "afficher_groupes_utilisateur")
    sh /home/user/TD1_deploiement/show_user_groups.sh
    ;;
  "statut_service")
    sh /home/user/TD1_deploiement/service_status.sh
    ;;
  "redemare_service")
    sh /home/user/TD1_deploiement/service_restart.sh
    ;;
  "active_service")
    sh /home/user/TD1_deploiement/service_switch.sh
    ;;
  "help")
    sh /home/user/TD1_deploiement/list_options.sh
    ;;
  *)
    echo "Commande inconnue !"
    ;;
esac




