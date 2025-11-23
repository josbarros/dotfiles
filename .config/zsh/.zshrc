# Zinit
source $ZINIT_HOME/zinit.zsh

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# More Zinit plugins
zinit light "spaceship-prompt/spaceship-vi-mode"
zinit light "spaceship-prompt/spaceship-prompt"
zinit load "zsh-users/zsh-history-substring-search"
zinit light "zsh-users/zsh-autosuggestions"
zinit light "zsh-users/zsh-syntax-highlighting"

# Autocomplete
autoload -Uz compinit && compinit

# Hidden File Autocomplete
setopt globdots

# Double tab menu
zstyle ':completion:*' menu select
zmodload zsh/complist

# Extra vim keys configuration
export KEYTIMEOUT=1 # Make esc key fast
bindkey '^R' history-incremental-search-backward # Enable search in vi mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# Histfile
HISTFILE="$XDG_DATA_HOME"/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY_TIME

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Load aliases - this must be at the end
source "$XDG_CONFIG_HOME/aliases"

