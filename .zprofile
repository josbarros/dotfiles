# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$HOME/.local/bin"

# Yarn shit
export PATH="$HOME/.config/yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Use vim as default
export EDITOR=vim

# BSD ls colors
export LSCOLORS=GxFxCxDxBxegedabagaced

# GNU ls colos	
export LS_COLORS='di=1;36:ln=1;35:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43'

# git config
export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

# Needed for yadm encrypt to work on MacOS
GPG_TTY=$(tty)
export GPG_TTY

# Enable Firefox Video Hardware acceleration on Wayland
MOZ_ENABLE_WAYLAND=1

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
export ZINIT_HOME="$XDG_DATA_HOME"/zinit
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/pythonstartup.py
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# Secret
. "$XDG_CONFIG_HOME"/secret
