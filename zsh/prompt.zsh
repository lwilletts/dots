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
    PROMPT="%{$fg[white]%}|%{$reset_color%} "

    # set window title
    print -Pn "\e]0;%~\a"
}

zle-keymap-select() {
    PROMPT="%{$fg[white]%}|%{$reset_color%} "

    test "$KEYMAP" = "vicmd" && {
        PROMPT="%{$fg[red]%}|%{$reset_color%} "
    }

    zle reset-prompt
}

RPROMPT="%{$fg[cyan]%}%{$reset_color%}"

# superglobs
setopt extendedglob
unsetopt caseglob

# ls colours
hash busybox 2> /dev/null || {
	hash dircolors 2> /dev/null && {
	    eval "$(dircolors ~/.zsh/lscolours)"
	    alias ls="ls -F -N --color=auto --group-directories-first"
	} || {
	    alias ls="ls -F -N --group-directories-first"
	}
} || {
    alias ls="ls -F --group-directories-first"
}

# load reporting
REPORTTIME=60
