# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin"

# Yarn shit
export PATH="$HOME/.config/yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Use vim as default
export EDITOR=vim

# BSD ls colors
export LSCOLORS=GxFxCxDxBxegedabagaced

# git config
export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

# Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export NVM_DIR="$XDG_CONFIG_HOME"/nvm
export SDKMAN_DIR="$XDG_DATA_HOME"/sdkman
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export ZPLUG_HOME="$XDG_DATA_HOME"/zsh/zplug
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors $XDG_CONFIG_HOME/dir_colors)"
fi

# Secret
if [ -e "$XDG_CONFIG_HOME"/secret ]; then
    source "$XDG_CONFIG_HOME"/secret
fi
