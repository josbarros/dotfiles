# Git stuff
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{165}(%b)%f'
zstyle ':vcs_info:*' enable git
PROMPT='%F{cyan1}%1~%f %# $vcs_info_msg_0_ '

# Zinit
source $ZINIT_HOME/zinit.zsh
zinit load "zsh-users/zsh-history-substring-search"
zinit load "zsh-users/zsh-syntax-highlighting"
zinit load "zsh-users/zsh-autosuggestions"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# Autocomplete
autoload -Uz compinit && compinit

# Double tab menu
zstyle ':completion:*' menu select
zmodload zsh/complist

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

# Aliases
alias cp='cp -iv'
alias mv='mv -iv'
alias mkd='mkdir -pv'
alias df='df -h'
alias grep='grep --color=auto'
alias ccat='highlight'
if [ $(uname -s) = "Darwin" ]; then
    alias rm='grm -vI'
    alias ls='gls -hNv --color=auto --group-directories-first'
else
    alias rm='rm -vI'
    alias ls='ls -hNv --color=auto --group-directories-first'
    alias diff='diff --color=auto'
fi    

# Linux specific aliases
alias xcritty='WAYLAND_DISPLAY= alacritty'
alias geject='gio mount -e'

# Histfile
HISTFILE="$XDG_DATA_HOME"/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY_TIME

# Hidden File Autocomplete
setopt globdots

# Yarn is a mess
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
