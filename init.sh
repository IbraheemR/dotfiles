#! /bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y git curl i3 zsh feh imagemagick xclip policykit-desktop-privileges policykit-1-gnome

# if ohmy zsh is not installed, install it
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

sudo apt install software-properties-common
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher

sudo apt autoremove -y
