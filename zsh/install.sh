#! /bin/sh

echo "Linking zsh config."
ln -sv $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

echo "Installing ohmyzsh."
ZSH=$HOME/.dotfiles/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo "ZSH setup complete!"
