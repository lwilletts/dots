umask 022
unset TERMCAP
unset MANPATH

export TERM="rxvt-unicode-256color"

# remove terminal suspend
# stty start undef

SRC="$HOME/src"
DOTS="$HOME/.dots"
GOPATH="$HOME/.go"
PATH=""

EXECPATHS="/bin
/sbin
/usr/bin
/usr/sbin
$DOTS/bin
$HOME/.fzf/bin
/usr/local/bin
$SRC/fwm
$GOPATH
$HOME/.gem/ruby/2.6.0/bin"

printf '%s\n' "$EXECPATHS" | while read -r EXECPATH; do
    test -d "$EXECPATH" && PATH="$PATH:$EXECPATH"
done

export GOPATH
export PATH=$(printf '%s\n' "$PATH" | cut -c 2-)

unset EXECPATH

# global shell vars.
export QT_QPA_PLATFORMTHEME="qt5ct"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="/home/fyr"
export BROWSER="/usr/bin/qutebrowser"

export VISUAL="nvim"
export EDITOR="nvim"
alias vi="$VISUAL"
alias vim="$VISUAL"

export PAGER="less"
export FZF_DEFAULT_OPTS='--color=bw'

alias white="sed 's/\x1B\[[0-9;]*[JKmsu]//g'"
alias lesscolor="nocolor | $PAGER"
