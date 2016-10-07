#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal
#Date 	:         2016-09-25
#Version:         v0.6
#Usage 	:         bash xmetalLinuxScripts.sh

readonly basedir=$(pwd)
export basedir

rootdir=$basedir

postInstallsDir="$rootdir"/postInstalls

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

########################################################################
x=1

while [[ $x=1 ]]; do

      clear

      echo -e "Xmetal's Linux Script \n"
      echo -e "Please Select your Distrobution family \n"

      echo -e   "1. \t Ubuntu 14.04 Trusty Tahr based"
      echo -e   "2. \t Arch-based"

      echo -e   "3. \t OpenSUSE 42.1 Leap"
      # echo -e   "4. \t [COMPLETELY UNTESTED] OpenSuse Tumbleweed"

      echo -e   "5. \t Fedora"
      echo -e   "6. \t [*UNTESTED] Github Themes and Icons"
      echo -e   "7. \t[UNTESTED] Manjaro-fy"

      echo -e   "q. \t Exit to Prompt \n\n"

      read -p   "Your Choice?:" mainSelection

      case $mainSelection in
        1) bash   "$postInstallsDir"/ubuntuTrustyPostInstall.sh  ;;
        2) bash   "$postInstallsDir"/archLinuxPostInstall.sh ;;

        3) bash   "$postInstallsDir"/openSuseLeapPostInstall.sh  ;;
        4) bash   "$postInstallsDir"/openSuseTWPostInstall.sh  ;;

        5) bash   "$postInstallsDir"/fedora24PostInstall.sh  ;;
        6) bash   "$rootdir"/tasks/themes/github/githubThemes.sh ;;
        7) bash   "$rootdir"/tasks/themes/github/manjarofy.sh ;;

        [qQ]) quitScript      ;;

        * ) invalidSection ;; 


        esac
done
