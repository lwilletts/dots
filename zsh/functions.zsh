chpwd() {
    clear

    f0='[30m'; f1='[31m'; f2='[32m'; f3='[33m'
    f4='[34m'; f5='[35m'; f6='[36m'; f7='[37m'
    R='[0m'

    test $(ls -1 | wc -l) -gt 100 && {
        files=$(find -maxdepth 1 -type f | wc -l)
        links=$(find -maxdepth 1 -type l | wc -l)
        dirts=$(find -maxdepth 1 -type d | sed '1d' | wc -l)

        printf '%s\n\n' "$f3$files files ${R}&& $f6$dirts directories ${R}&& $f5$links links${R}"
        return 0
    }

    test -z "$(ls -1)" && {
        printf '%s\n\n' "${f5}Directory is empty!${R}"
    } || {
        ls -F --color=auto
        printf '\n'
    }

    # set window title to path name
    print -Pn "\e]0;%~\a"

    unset -v f0 41 f2 f3 f4 f5 f6 f7 R
}

zshrc() {
    RWD=$PWD

    cd ~/.zsh
    $EDITOR $(find -maxdepth 1 -type f | sort)

    . ~/.zshrc
    cd $RWD

    unset -v RWD
}

findexec() {
    find . -maxdepth 1 -type f -executable | sort
}

editexec() {
    $EDITOR $(findexec) "$@"
}

usr() {
    ps xgf "$@" | sed '1d; s/--type.*//' | \
        cut -c1-$(stty size < /dev/tty | cut -d\  -f 2)
}

exesh() {
    test -n "$1" && printf '%s\n\n' "#!/bin/sh" > "$1"
    chmod +x "$1"
    $EDITOR "$1"
}

# name / class / process of window id
hash fwmrc 2> /dev/null && . fwmrc
