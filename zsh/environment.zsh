umask 022
unset TERMCAP
unset MANPATH

# remove terminal suspend
stty -ixon
stty start undef

PATH=""
DOTS="$HOME/.dots"

EXECPATHS="\
/bin
/sbin
/usr/bin
/usr/sbin
$DOTS/bin
$HOME/.fzf/bin
/usr/local/bin
/usr/local/sbin"

printf '%s\n' "$EXECPATHS" | while read -r EXECPATH; do
    test -d "$EXECPATH" && export PATH="$PATH:$EXECPATH"
done

unset EXECPATH

# misc.
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="/home/fyr"

export BIN="$DOTS/bin"
export MUS="$HOME/music"
export BUL="$HOME/builds"
export IMG="$HOME/pictures"
export DWN="$HOME/downloads"

export IMGVIEW="mpv --really-quiet --input-unix-socket=/tmp/imagesocket --loop-file"
export VIDPLAY="mpv --really-quiet --input-unix-socket=/tmp/mpvsocket"
export BROWSER="/usr/bin/firefox"

# applications
alias i="$IMGVIEW"
alias mpvt="$VIDPLAY"
alias mpvi="$VIDPLAY --idle &!"

export VISUAL="nvim"
export EDITOR="nvim"

export PAGER="less"
export MANPAGER="$PAGER"

alias vi="$VISUAL"
alias vim="$VISUAL"

alias width="cut -c1-$(stty size < /dev/tty | cut -d\  -f 2)"
alias nocolor="sed 's/\x1B\[[0-9;]*[JKmsu]//g'"

alias more="nocolor | $VISUAL -"
alias lesscolor="nocolor | $PAGER"
