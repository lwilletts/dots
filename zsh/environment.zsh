umask 022
unset TERMCAP
unset MANPATH

# remove terminal suspend
# stty start undef

SRC="$HOME/src"
DOTS="$HOME/.dots"
GOPATH="$HOME/.go"
TESSDATA_PREFIX="$HOME/.dots/tessdata"
PATH=""

EXECPATHS=" $DOTS/bin
/usr/local/bin
/bin
/sbin
/usr/bin
/usr/sbin
$SRC/fwm
$GOPATH/bin
$HOME/.fzf/bin
$HOME/.local/bin
$HOME/.ghcup/bin
$HOME/.gem/ruby/2.6.0/bin"

printf '%s\n' "$EXECPATHS" | while read -r EXECPATH; do
    test -d "$EXECPATH" && PATH="$PATH:$EXECPATH"
done

export GOPATH
export TESSDATA_PREFIX
export PATH=$(printf '%s\n' "$PATH" | cut -c 2-)

unset EXECPATH

# program dots
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="/home/fyr"
export LESSHISTFILE="$XDG_CONFIG_HOME/lesshist"
export HISTFILE="$XDG_CONFIG_HOME/histfile"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export MAIL="$XDG_CONFIG_HOME/mail"
export PYTHONPATH="$XDG_CONFIG_HOME"
export XAUTHORITY="$XDG_CONFIG_HOME/xauth"
export GNUPGHOME="$XDG_CONFIG_HOME"

# global shell vars.
export QT_QPA_PLATFORMTHEME="qt5ct"
export BROWSER="/usr/bin/qutebrowser"

hash nvim 2> /dev/null && {
    export VISUAL="nvim"
    export EDITOR="nvim"
    alias vi="$VISUAL"
    alias vim="$VISUAL"
} || {
    export VISUAL="vim"
    export EDITOR="vim"
    alias vi="$VISUAL"
}

export PAGER="less"
export FZF_DEFAULT_OPTS='--color=bw'

alias white="sed 's/\x1B\[[0-9;]*[JKmsu]//g'"

# games
export GAME1="$HOME/.steam/steam/steamapps/common"
export GAME2="/mnt/speed/steamapps/common"

# shortcuts
export POOL="/mnt/pool"
export TV="$POOL/tv"
export MUS="$POOL/music"
export FILMS="$POOL/films"
