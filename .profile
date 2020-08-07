export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox

# Cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export RXVT_SOCKET="$XDG_RUNTIME_DIR"/urxvtd
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
eval "$(dircolors $XDG_CONFIG_HOME/dir_colors)"
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup


# Swap esc/caps at boot
setxkbmap -option caps:swapescape
# Set compose key
setxkbmap -option compose:menu
