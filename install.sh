#! /bin/bash
install_packages()
{
    sudo pacman -Syu zsh starship sheldon --no-confirm
}
copy_cfg()
{
    if [ -d "$HOME/.config" ]; then
        echo
    else
        mkdir -p "$HOME/.config"
    fi
}
