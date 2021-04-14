#! /bin/sh

# create symlinks
ln -sv ~/.dotfiles/vimrc ~/.vimrc
ln -sv ~/.dotfiles/vim ~/.vim
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sv ~/.dotfiles/git/gitconfig ~/.gitconfig

# loop through all subdirectories and run all "install.sh" scripts
for i in */install.sh
do
	if [ -x $i ]
	then
		$i
	fi
done
