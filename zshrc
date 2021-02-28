
# -----------------------------------
# Neema Yousefi's zshrc
# -----------------------------------

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$PATH

# BEGIN OH_MY_ZSH

# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

# set powerlevel10k as zsh theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# case sensetive autocomplete
CASE_SENSITIVE="false"

# oh-my-zsh plugins
plugins=(git bundler)

source $ZSH/oh-my-zsh.sh

# END OH_MY_ZSH

# User configuration
export DOTFILES="$HOME/.dotfiles"

# set vim as editor
export EDITOR='vim'

# thefuck
eval $(thefuck --alias fuck)

# fzf
export FZF_DEFAULT_COMMAND='rg --files --follow'

# go
export PATH=$HOME/go/bin:$PATH

# rust
export PATH=$HOME/.cargo/bin:$PATH

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

# aliases
source $DOTFILES/aliases

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
