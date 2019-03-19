# vi Mode
bindkey -v
export KEYTIMEOUT=1
zle -N zle-keymap-select

# no cd required
setopt autocd nomatch notify

# coloured prompt
autoload -U colors && colors

# mass autorename
autoload -U zmv

# vi prompt
precmd() {
    PROMPT="%{$fg[white]%}───%{$reset_color%} "

    # set window title
    print -Pn "\e]0;%~\a"
}

zle-keymap-select() {
    PROMPT="%{$fg[white]%}───%{$reset_color%} "

    test "$KEYMAP" = "vicmd" && {
        PROMPT="%{$fg[magenta]%}───%{$reset_color%} "
    }

    zle reset-prompt
}

RPROMPT="%{$fg[cyan]%} %n@%m %{$reset_color%}"

# superglobs
setopt extendedglob
unsetopt caseglob

# ls colours
hash dircolors 2> /dev/null && {
    eval "$(dircolors ~/.zsh/lscolours)"
    alias ls="ls -F -N --color=auto"
} || {
    alias ls="ls -F -N"
}

# load reporting
REPORTTIME=60

# media extensions
alias -s c="$EDITOR"
alias -s md="$EDITOR"
alias -s txt="$EDITOR"
alias -s html="$EDITOR"
alias -s ff="lel"
alias -s gif="$IMGVIEW"
alias -s png="$IMGVIEW"
alias -s jpg="$IMGVIEW"
alias -s jpeg="$IMGVIEW"
alias -s webm="$IMGVIEW"
alias -s mp4="$VIDPLAY"
alias -s mkv="$VIDPLAY"
alias -s mp4="$VIDPLAY"
