chpwd() {
    clear

    f0='[30m'; f1='[31m'; f2='[32m'; f3='[33m'
    f4='[34m'; f5='[35m'; f6='[36m'; f7='[37m'
    R='[0m'

    [ $(ls -1 | wc -l) -gt 100 ] && {
        files=$(find -maxdepth 1 -type f | wc -l)
        links=$(find -maxdepth 1 -type l | wc -l)
        dirts=$(find -maxdepth 1 -type d | sed '1d' | wc -l)

        printf '%s\n\n' "$f3$files files ${R}&& $f6$dirts directories ${R}&& $f5$links links${R}"
        return 0
    }

    [ -z "$(ls -1)" ] && {
        printf '%s\n\n' "${f5}Directory is empty!${R}"
    } || {
        ls -F --color=auto --group-directories-first
        printf '\n'
    }

    # set window title to path name
    case $TERM in
        rxvt*) preexec () { print -Pn "\e]0;$1\a" } ;;
        *)     print -Pn "\e]0;%~\a"                ;;
    esac

    unset -v f0 41 f2 f3 f4 f5 f6 f7 R
}

zshrc() {
    $EDITOR $(find ~/.dots/zsh -maxdepth 1 -type f | sort)

    . ~/.zshrc
}

bin() {
    $EDITOR $(find ~/.dots/bin -maxdepth 1 -type f | sort)
}

fe() {
    find . -maxdepth 1 -type f -executable | sort
}

ee() {
    $EDITOR $(fe) "$@"
}

usr() {
    ps xgf "$@" | sed '1d; s/--type.*//' | \
        cut -c1-$(stty size < /dev/tty | cut -d\  -f 2)
}

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;47;30m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

sigkill() {
    kill -9 $(pgrep $1)
}

mpvv() {
    mpvc "$@" -S "/tmp/vidsocket"
}

mpvi() {
    mpv "$@" --pause &!
}

# name / class / process of window id
hash fwmrc 2> /dev/null && . fwmrc
