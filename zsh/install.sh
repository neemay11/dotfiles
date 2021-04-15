#! /bin/sh

echo "Installing ohmyzsh."
ZSH=$HOME/.dotfiles/.oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# remove auto-generated .zshrc
rm -f $HOME/.zshrc
rm -f $HOME/.zshrc.pre-oh-my-zsh

echo "Installing Powerlevel10k oh-my-zsh theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.dotfiles/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Linking zsh config."
ln -sv $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc

echo "ZSH setup complete!"
