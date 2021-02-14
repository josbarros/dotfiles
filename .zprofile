# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin"

# Yarn shit
export PATH="$HOME/.config/yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# ls colors
export LSCOLORS=GxFxCxDxBxegedabagaced

# git config
export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

# Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config 
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export NVM_DIR="$XDG_CONFIG_HOME"/nvm
export SDKMAN_DIR="$XDG_DATA_HOME"/sdkman
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export ZPLUG_HOME=/usr/local/opt/zplug
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# Secret
source "$XDG_CONFIG_HOME"/secret
