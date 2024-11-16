#!/bin/bash
cd ~/Desktop
rm -rf HeadManipulationRepo
git init HeadManipulationRepo
cd HeadManipulationRepo
touch a.txt b.txt c.txt
echo "msg a" > a.txt
echo "msg b" > b.txt
echo "msg c" > c.txt
git add *
git commit -m "primo commit"
git checkout -b devTemp
echo "nuovo messaggio a b" >> b.txt
git add b.txt
git commit -m "secondo commit, modificato file b"
git log --oneline --graph --all
git checkout main
git merge devTemp
git log
git status
