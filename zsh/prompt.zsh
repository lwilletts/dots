# vi Mode
bindkey -v
export KEYTIMEOUT=1
zle -N zle-keymap-select

# no cd required
setopt autocd nomatch notify

# accent chars
setopt combining_chars

# coloured prompt
autoload -U colors && colors

# mass autorename
autoload -U zmv

# vi prompt
precmd() {
    PROMPT="%{$fg[white]%}|%{$reset_color%} "
    RPROMPT="%{$fg[white]%}%{$reset_color%}"

    # set window title
    print -Pn "\e]0;%~\a"
}

zle-keymap-select() {
    PROMPT="%{$fg[white]%}|%{$reset_color%} "

    [ "$KEYMAP" = "vicmd" ] && {
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
REPORTTIME=120

# function zle-line-init zle-keymap-select {
# case "$KEYMAP" in
# vicmd)
# 	# block cursor
# 	echo -en '\033[0 q'
# 	;;
# main|viins)
# 	# line cursor
# 	echo -en '\033[5 q'
# 	;;
# esac
# }

# zle -N zle-line-init
# zle -N zle-keymap-select

