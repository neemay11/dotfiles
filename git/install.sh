#! /bin/sh

# remove old gitconfig
rm -f $HOME/.gitconfig

# create symlink for gitconfig
ln -sv $DOTFILES/git/gitconfig $HOME/.gitconfig
