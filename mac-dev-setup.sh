#!/bin/sh

# Install Homebrew
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Oh-My-Zsh"
/bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Apps via Homebrew
echo "Installing Apps via Homebrew"
brew install \
tree \
wget \
iterm2 \
ansible \
starship

#brew tap caskroom/cask
echo “Installing Web Browser via Homebrew cask”
brew install --cask \
google-chrome \
firefox \
microsoft-edge \

echo "Installing Development Tools via Homebrew cask"
brew install --cask \
virtualbox \
visual-studio-code \
vagrant \
datagrip \
webstorm \
burp-suite

echo "Installing Productivity Tools via Homebrew cask"
brew install --cask \
tiles \
cyberduck \
anydesk \
bing-wallpaper \
telegram \
whatsapp \
flameshot \

echo "Setup .zshrc"
echo 'eval "$(starship init zsh)"'  >> ~/.zshrc
source ~/.zshrc

echo "Install Nerd Font"
brew tap homebrew/cask-fonts && brew install --cask font-caskaydia-cove-nerd-font
