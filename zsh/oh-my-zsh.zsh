# oh-my-zsh path
export ZSH="$DOTFILES/.oh-my-zsh"

# set powerlevel10k as zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# case sensetive autocomplete
CASE_SENSITIVE="false"

# oh-my-zsh plugins
plugins=(git bundler macos)

source $ZSH/oh-my-zsh.sh
