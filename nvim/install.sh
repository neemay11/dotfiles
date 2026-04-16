# create config directory
mkdir -p $HOME/.config/nvim

# delete old nvim configs
rm -rf $HOME/.config/nvim

# create symlinks
ln -sv $DOTFILES/nvim/init.vim $HOME/.config/nvim/init.vim
