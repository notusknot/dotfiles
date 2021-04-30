#!/usr/bin/env bash

echo "Copying configurations..."

# URxvt config
cp -r $PWD/.config/.Xresources $HOME/.Xresources

# bspwm and sxhkd config
[ ! -d "$HOME/.config/bspwm" ] && mkdir -p $HOME/.config/bspwm/
cp -r $PWD/.config/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc

[ ! -d "$HOME/.config/sxhkd" ] && mkdir -p $HOME/.config/sxhkd/
cp -r $PWD/.config/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc

# dunst config 
[ ! -d "$HOME/.config/dunst" ] && mkdir -p $HOME/.config/dunst/
cp -r $PWD/.config/dunst/dunstrc $HOME/.Xresources

# polybar config
[ ! -d "$HOME/.config/polybar" ] && mkdir -p $HOME/.config/polybar/scripts
cp -r $PWD/.config/polybar/* $HOME/.config/polybar

# picom config
cp -r $PWD/.config/picom.conf* $HOME/.config/picom.conf

# zsh config
cp -r $PWD/.config/.zshrc $HOME/.zshrc
cp -r $PWD/.config/.zshrc $HOME/.config/.zshrc
echo "Installing powerlevel10k..."
git clone https://github.com/romkatv/powerlevel10k $HOME/stuff/scripts/powerlevel10k/
echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/stuff/scripts/zsh-syntax-highlighting


bspc wm -r