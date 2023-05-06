#! /bin/sh

# remove old vim config
rm -f $HOME/.vim
rm -rf $HOME/.vimrc

# create symlink for vimrc
echo "Installing vim settings."
mkdir -p $HOME/.vim

ln -sv $DOTFILES/vim/vimrc $HOME/.vimrc
ln -sv $DOTFILES/vim/ftplugin $HOME/.vim/ftplugin
ln -sv $DOTFILES/vim/coc-settings.json $HOME/.vim/coc-settings.json

# download vim-plug
echo "Downloading vim plugin manager."
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
