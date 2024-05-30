#!/bin/bash

##
# gnp.sh
#
# Git New Project to GitHub
#
# $1 : folderName
#
# Usage :
# gnp $1

read -p "Appuyer sur [Enter] dès que le dépôt distant est créé ..." &&
mkdir $1 &&
cd $1 &&
echo "# $1" >> README.md
git init &&
git add README.md &&
git commit -m "v.1.0.0" &&
# -M = --move --force
git branch -M main &&
git remote add origin https://github.com/LDdvlp/$1.git &&
# -u = --set-upstream-to (--set-upstream has confusing syntax)
git push -u origin main
