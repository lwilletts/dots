umask 022
unset TERMCAP
unset MANPATH

# remove terminal suspend
stty start undef

SRC="$HOME/src"
DOTS="$HOME/.dots"
PATH=""

EXECPATHS="/bin
/sbin
/usr/bin
/usr/sbin
$DOTS/bin
$HOME/.fzf/bin
/usr/local/bin
$SRC/fwm"

printf '%s\n' "$EXECPATHS" | while read -r EXECPATH; do
    test -d "$EXECPATH" && PATH="$PATH:$EXECPATH"
done

export PATH=$(printf '%s\n' "$PATH" | cut -c 2-)

unset EXECPATH

# global shell vars.
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="/home/fyr"
export BROWSER="/usr/bin/qutebrowser"

export VISUAL="nvim"
export EDITOR="nvim"
alias vi="$VISUAL"
alias vim="$VISUAL"

test -f "/usr/bin/nvimpager" && {
    export PAGER="nvimpager"
} || {
    export PAGER="less"
}

export MANPAGER="$PAGER"
export FZF_DEFAULT_OPTS='--color=bw'

alias white="sed 's/\x1B\[[0-9;]*[JKmsu]//g'"
alias lesscolor="nocolor | $PAGER"
