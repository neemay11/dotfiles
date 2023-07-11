#! /bin/sh

# symlink this folder into $HOME/.config
echo "Installing nvim settings."
if [ ! -d $HOME/config/nvim ]
then
		mkdir -p $HOME/config/nvim
fi

ln -sv $HOME/.dotfiles/nvim $HOME/.config/nvim
