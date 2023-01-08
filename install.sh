#!/bin/sh

# Setup omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install paru
sudo pacman -S cargo
cargo install paru
export PATH=$PATH:~/.cargo/bin

# Copy all files/dirs to home dir
for file in ./**/*(.); do
  echo "Copying $file to home directory"
  cp -r $file ~
done

# Setup nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# Graphical utils/window management
paru -S xorg bspwm sxhkd lxappearance kitty dunst firefox code polybar qt5ct rofi

# Fonts
paru -S nerd-fonts-jetbrains-mono adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts noto-fonts-cjk nerd-fonts-roboto-mono otf-code-new-roman

# Icons/themes
paru -S dracula-gtk-theme-git dracula-cursors-git dracula-xresources-git dracula-icons-git

# Eye candy
paru -S cmatrix neofetch bottom

git clone https://github.com/Murzchnvok/rofi-collection.git ~/rofi-collection

