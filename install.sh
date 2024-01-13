#! /bin/bash
install_packages()
{
    echo "Start installing necessary packages"
    sudo pacman -Syu zsh starship sheldon exa xorg-appres xorg-server-devel noto-fonts-cjk noto-fonts-emoji noto-fonts-extra neofetch bspwm sxhkd trash-cli rofi polybar joshuto p7zip unrar jq poppler w3m perl-image-exiftool neovim firefox firefox-i18n-zh-cn xclip fcitx5 fcitx5-mozc fcitx5-material-color fcitx5-configtool fcitx5-chinese-addons fcitx5-pinyin-moegirl fcitx5-pinyin-zhwiki --no-confirm
}
check_environment()
{
    if [ -z "$(cat /etc/os-release | grep Arch)" ]; then
        install_packages
        copy_cfg
    else
        echo "You are not using Arch Linux, This script won't work !!!"
        echo "To get more information, please check out the README.md."
        exit 1
    fi
}
copy_cfg()
{
    if [ -d "$HOME/.config" ]; then
        echo "Start copying files to $HOME/.config"
        cp "$(pwd)/.zshrc" "$HOME" -rf
        cp "$(pwd)/bspwm" "$HOME" -rf
        cp "$(pwd)/joshuto" "$HOME" -rf
        cp "$(pwd)/neofetch" "$HOME" -rf
        cp "$(pwd)/nvim" "$HOME" -rf
        cp "$(pwd)/polybar" "$HOME" -rf
        cp "$(pwd)/rofi" "$HOME" -rf
        cp "$(pwd)/sheldon" "$HOME" -rf
        cp "$(pwd)/st" "$HOME/.st" -rf
        cp "$(pwd)/starship" "$HOME" -rf
        cp "$(pwd)/sxhkd" "$HOME" -rf
        cd "$HOME/.st"
        make install
    else
        echo "Find that you don't have a .config directory, creating one"
        mkdir -p "$HOME/.config"
        copy_cfg
    fi
    exit 1
}
check_environment
