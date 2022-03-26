#!/bin/bash
echo PACKAGER=\"Kim Taehwan \<ktcar214@ktcar214.com\>\" | sudo tee -a /etc/makepkg.conf > /dev/null
gpg --receive-key D3A93CAD751C2AF4F8C7AD516C35B99309B5FA62
gpg --receive-key 13975A70E63C361C73AE69EF6EEB81F8981C74C7
gpg --receive-key F3691687D867B81B51CE07D9BBE43771487328A9
gpg --receive-key 86CFFCA918CF3AF47147588051E8B148A9999C34
sudo pacman -Syu  --noconfirm || exit 1
makepkg -fCs --noconfirm || exit 2
