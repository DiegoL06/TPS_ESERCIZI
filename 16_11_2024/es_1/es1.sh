#!/bin/bash
cd ~/Desktop
rm -rf repo_esercizio
mkdir repo_esercizio
cd repo_esercizio
git init
touch "README.md"
echo "LEGGIMI" > README.md
git add README.md
read -p "Inserisci il messaggio da mettere nel commit:" msg
git commit -m "$msg"
