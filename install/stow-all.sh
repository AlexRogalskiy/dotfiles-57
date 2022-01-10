#!/bin/bash

echo '[*] Removing default configurations ...'
rm rf ~/.local/share/fonts/DankMono ~/.config/lsd ~/.config/kitty ~/.config/starship.toml ~/.zshenv ~/zshrc ~/.config/zsh

echo '[*] Stowing/Creating simlinks for zsh'
cd ../dotfiles && stow -vSt ~ zsh && cd ../install
echo '[*] Stowing/Creating simlinks for fonts'
cd ../dotfiles && stow -vSt ~ fonts && cd ../install
fc-cache -f -v
echo '[*] Stowing/Creating simlinks for kitty'
cd ../dotfiles && stow -vSt ~ kitty && cd ../install
echo '[*] Stowing/Creating simlinks for starship'
cd ../dotfiles && stow -vSt ~ starship && cd ../install
echo '[*] Stowing/Creating simlinks for lsd'
cd ../dotfiles && stow -vSt ~ lsd && cd ../install
