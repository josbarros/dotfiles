# Git stuff
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{165}(%b)%f'
zstyle ':vcs_info:*' enable git
PROMPT='%F{cyan1}%1~%f %# $vcs_info_msg_0_ '

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

# Alias 
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -v'
alias mkd='mkdir -pv'
alias df='df -h'
alias ls='ls -hG' # color
alias grep='grep --color=auto'

# Histfile
HISTFILE="$XDG_DATA_HOME"/zsh/.zhistory

# Hidden File Autocomplete
setopt globdots

# Hotfix alias, symlinks do not work for this
alias hotfix="sh ~/Projects/uberall/src/main/scripts/hotfix.sh"

# Yarn is a mess
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Zplug
source $ZPLUG_HOME/init.zsh
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load 

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/Users/rui/.local/share/sdkman/bin/sdkman-init.sh" ]] && source "/Users/rui/.local/share/sdkman/bin/sdkman-init.sh"
