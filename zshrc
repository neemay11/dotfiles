# -----------------------------------
# Neema Yousefi's zshrc
# -----------------------------------

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh path
export ZSH="/Users/nyousefi/.oh-my-zsh"

# powerlevel9k prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# set powerlevel9k as zsh theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# use case-sensitive completion.
CASE_SENSITIVE="true"

# oh-my-zsh plugins
plugins=(git tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# User configuration

# set vim as editor
export EDITOR='vim'

# Set up rbenv
eval "$(rbenv init -)"

#aliases
source ~/.aliases
