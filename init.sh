#! /bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y git curl i3 zsh feh imagemagick xclip

# if ohmy zsh is not installed, install it
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

sudo apt autoremove -y