#!usr/bin/bash
# Setting up a new ubuntu machine

# install git
sudo apt-get install git

# install zsh, zsh-antigen (package manager for zsh):
sudo apt-get install zsh zsh-antigen

# change shell to zsh
chsh -s /usr/bin/zsh

# install autokey
sudo apt-get install autokey-common autokey-gtk

# antigen
curl -L git.io/antigen > antigen.zsh

# firefox nightly
sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
sudo apt-get update
