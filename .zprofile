# Add stuff to $PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
export PATH="$PATH:$HOME/.config/yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"

# Set Homebrew variables
# todo docs.brew.sh/installation
# eval "$(/opt/homebrew/bin/brew shellenv)" 

# Use vim as default
export EDITOR=vim

# GNU ls colos	
export LS_COLORS='di=1;36:ln=1;35:so=1;32:pi=1;33:ex=1;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43'

# git config
export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

# Needed for yadm encrypt to work on MacOS
GPG_TTY=$(tty)
export GPG_TTY

# Force Wayland on Firefox/Thunderbird 
export MOZ_ENABLE_WAYLAND=1

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Cleanup
export SSH_AUTH_SOCK="$HOME/.var/app/com.bitwarden.desktop/data/.bitwarden-ssh-agent.sock"
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/password-store
export NVM_DIR="$XDG_CONFIG_HOME"/nvm
export SDKMAN_DIR="$XDG_DATA_HOME"/sdkman
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export ZINIT_HOME="$XDG_DATA_HOME"/zinit/zinit.git
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/pythonstartup.py
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export W3M_DIR="$XDG_STATE_HOME/w3m"

