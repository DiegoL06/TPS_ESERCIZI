#!/bin/bash
cd ~/Desktop
rm -rf repo_esercizio
mkdir repo_esercizio
cd repo_esercizio
git init
touch "README.md"
echo "LEGGIMI" > README.md
git add README.md
git commit -m "First commit"
