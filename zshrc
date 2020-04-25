# -----------------------------------
# Neema Yousefi's zshrc
# -----------------------------------

export PATH=$HOME/bin:$PATH

# BEGIN OH_MY_ZSH

# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

# powerlevel9k prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# set powerlevel9k as zsh theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# case sensetive autocomplete
CASE_SENSITIVE="false"

# oh-my-zsh plugins
plugins=(git tmux tmuxinator)

source $ZSH/oh-my-zsh.sh

# END OH_MY_ZSH

# User configuration
export DOTFILES="$HOME/.dotfiles"

# set vim as editor
export EDITOR='vim'

# rbenv
eval "$(rbenv init -)"

# thefuck
eval $(thefuck --alias fuck)

# fzf
export FZF_DEFAULT_COMMAND='ag -g ""'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# okta
if [[ -f "$HOME/.okta/bash_functions" ]]; then
    . "$HOME/.okta/bash_functions"
fi
if [[ -d "$HOME/.okta/bin" && ":$PATH:" != *":$HOME/.okta/bin:"* ]]; then
    PATH="$HOME/.okta/bin:$PATH"
fi

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# quick change jdk versions
jdk() {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
  java -version
}

#aliases
source $DOTFILES/aliases
