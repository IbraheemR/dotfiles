#! /bin/bash

sudo apt update

sudo apt install git curl i3 zsh feh

# if ohmy zsh is not installed, install it
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


git config --global user.name "Ibraheem Rodrigues"
git config --global user.email "contact@ibraheemrodrigues.com"

gsettings set org.gnome.desktop.interface color-scheme prefer-dark

sudo apt autoremove