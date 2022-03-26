#!/bin/bash
echo PACKAGER=\"Kim Taehwan \<ktcar214@ktcar214.com\>\" | sudo tee -a /etc/makepkg.conf > /dev/null
sudo pacman -Syu  --noconfirm || exit 1
makepkg -fCs --noconfirm || exit 2
