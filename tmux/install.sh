#! /bin/sh

# remove old tmux.conf
rm -f $HOME/.tmux.conf

# create symlink for tmux.conf
ln -sv $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf
