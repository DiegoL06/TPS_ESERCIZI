#!/bin/bash
cd ~/Desktop
rm -rf MergeRepo
git init MergeRepo
cd MergeRepo
touch file1.txt file2.txt file3.txt
echo "intestazione file 1" > file1.txt
echo "intestazione file 2" > file2.txt
echo "intestazione file 3" > file3.txt
git add *
git commit -m "primo commit con file1,2 e 3"
git checkout -b featureA
echo "NUOVA RIGA FILE 2 FATTA DA FEATUREA" >> file2.txt
git add file2.txt
git commit -m "secondo commit con file2 modificato da FeatureA"
git checkout main
git checkout -b featureB
echo "NUOVA RIGA FILE 2 FATTA DA FEATUREB" >> file2.txt
git add file2.txt
git commit -m "secondo commit con file2 modificato da FeatureB"
git checkout main
git log --oneline --graph --all
git merge featureA
git merge featureB
nano file2.txt
git add file2.txt
git commit -m "merge di FeatureA e B su main"
git log --oneline --graph --all
