#!/bin/sh

# Install shfmt
sudo pacman -S shfmt npm nodejs jdk-openjdk go python3 zsh ruby shellcheck

# Setup omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install paru
sudo pacman -S cargo
cargo install paru
export PATH=$PATH:~/.cargo/bin

# Copy all files/dirs to home dir
cp -r ./* ~

# Graphical utils/window management
paru -S xorg bspwm sxhkd lxappearance kitty dunst firefox code polybar qt5ct rofi yay

# Use this until paru allows for gpg key substitution
yay -S spotify

# Fonts
paru -S nerd-fonts-jetbrains-mono adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts noto-fonts-cjk nerd-fonts-roboto-mono otf-code-new-roman

# Icons/themes
paru -S dracula-gtk-theme-git dracula-cursors-git dracula-xresources-git dracula-icons-git

# Eye candy
paru -S cmatrix neofetch bottom

git clone https://github.com/Murzchnvok/rofi-collection.git ~/rofi-collection
