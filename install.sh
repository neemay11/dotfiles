#! /bin/sh
export DOTFILES="$HOME/.dotfiles"


# function to create a symbolic link
# if the target file already exists, it will be backed up to a .bak file
createSymlink() {
	if [ -e "$1" ]; then
		echo "$1 already exists, moving to $1.bak"
		mv "$1" "$1.bak"
	fi
	ln -sv "$2" "$1"
}

createSymlink $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf
createSymlink $DOTFILES/nvim/init.vim $HOME/.config/nvim/init.vim
createSymLink $DOTFILES/zsh/zshrc $HOME/.zshrc
createSymLink $DOTFILES/git/gitconfig $HOME/.gitconfig
