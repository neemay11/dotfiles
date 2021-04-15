#! /bin/sh

echo "Installing ohmyzsh."
ZSH=$HOME/.dotfiles/.oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# remove auto-generated .zshrc
rm -f $HOME/.zshrc
rm -f $HOME/.zshrc.pre-oh-my-zsh

echo "Linking zsh config."
ln -sv $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

echo "ZSH setup complete!"
