#! /bin/sh

# create symlink for vimrc
echo "Installing vim settings."
if [ ! -d $HOME/.vim ]
then
		mkdir -p $HOME/.vim
fi

ln -sv $HOME/.dotfiles/vim/vimrc $HOME/.vimrc
ln -sv $HOME/.dotfiles/vim/ftplugin $HOME/.vim/ftplugin
ln -sv $HOME/.dotfiles/vim/coc-settings.json $HOME/.vim/coc-settings.json

# download vim-plug
echo "Downloading vim plugin manager."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
