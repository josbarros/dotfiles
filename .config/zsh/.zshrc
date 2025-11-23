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

# Git stuff
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{165}(%b)%f'
zstyle ':vcs_info:*' enable git
PROMPT='%F{cyan1}%1~%f %# $vcs_info_msg_0_ '

# vi mode
bindkey -v
export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward # otherwise it won't work

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# vim mode indicator
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# Histfile
HISTFILE="$XDG_DATA_HOME"/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY_TIME

# Load aliases - this must be at the end
source "$XDG_CONFIG_HOME/aliases"

