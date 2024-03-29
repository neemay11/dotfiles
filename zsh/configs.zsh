# PATH
export PATH="$HOME/bin:$PATH"

# homebrew
export PATH="/opt/homebrew/bin:$PATH"

# set vim as editor
export EDITOR="vim"

# declare projects directory
export PROJECTS="$HOME/dev"

# thefuck
eval $(thefuck --alias fuck)

# fzf
export FZF_DEFAULT_COMMAND="rg --files --follow"

# go
export GOPATH="$PROJECTS/.go"
export PATH="$GOPATH/bin:$PATH"

# rust
export CARGO_HOME="$PROJECTS/.cargo"

# ruby
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# vi mode
bindkey -v

# for gpg to work with p10k
export GPG_TTY=$TTY
