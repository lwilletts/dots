umask 022
unset TERMCAP
unset MANPATH

# remove terminal suspend
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
/usr/local/sbin
$HOME/builds/fwm"

printf '%s\n' "$EXECPATHS" | while read -r EXECPATH; do
    test -d "$EXECPATH" && export PATH="$PATH:$EXECPATH"
done

unset EXECPATH

# global shell vars.
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="/home/fyr"
export BROWSER="/usr/bin/firefox"

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

alias white="sed 's/\x1B\[[0-9;]*[JKmsu]//g'"
alias lesscolor="nocolor | $PAGER"
