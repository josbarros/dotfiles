# Source shared env settings
[[ -f ~/.profile ]] && source ~/.profile

# ZSH
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export ZINIT_HOME="$XDG_DATA_HOME"/zinit/zinit.git
export SPACESHIP_CONFIG="$ZDOTDIR/spaceship.zsh"
