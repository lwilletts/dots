# sys
alias s="sudo"
alias se="sudo -e"

# permissions
alias chmox="chmod +x"
alias mine="s chown $(echo $USER):users"
alias all="mine -R *"

# operations
alias mount="s mount"
alias umount="s umount"

alias l="ls"
alias mv="mv -f"
alias cp="cp -rf"
alias rm="rm -rf"
alias rsync="rsync -av"

alias szsh="source ~/.zshrc"
alias sxrdb="xrdb ~/.Xresources"

alias reboot="sudo reboot"
alias poweroff="sudo poweroff"

# apps
alias todo="$VISUAL ~/.todo.md"

# net
alias hn="hostname"
alias tn="transmission-remote-cli"
alias yt="youtube-dl -x -o \"%(title)s.%(ext)s\""
alias extip="curl -s icanhazip.com"
alias intip="ip a | grep -w \"inet\" | awk '/192/ {print \$2}' | cut -d'/' -f 1"

# x / dtach / tmux
alias x="xinit"
alias dz="dtach -A /tmp/zsh -z zsh"

# fonts
alias lemon="printf '\e]710;%s\007' \"-benis-lemon-*-*-*-*-*-*-*-*-*-*-*-*\""
alias edges="printf '\e]710;%s\007' \"-artwiz-edges-*-*-*-*-*-*-*-*-*-*-*-*\""

# ascii art
alias tits="curl -sL z3bra.org/tits"
alias unix="printf '%s\n' \"\$(curl -sL git.io/unix)\""
alias taco="printf '%s\n' \"\$(curl -sL git.io/taco)\""
alias pizza="printf '%s\n' \"\$(curl -sL git.io/pizza)\""

# misc.
alias motd="cat /etc/motd"
alias issue="cat /etc/issue"
alias happy="toilet -f term -w 200 -t --gay"
alias metal="toilet -f term -w 200 -t --metal"
alias gibberish="metal < /dev/urandom"
alias snake="terminibbles -d 3 -q"
alias matrix="cmatrix -ab -u 1"
alias engage="sox -c 2 -n synth whitenoise band -n 100 24 band -n 300 100 \
gain +4 synth whitenoise lowpass -1 100 lowpass -1 100 lowpass -1 100 gain +2"
alias starwars="telnet towel.blinkenlights.nl"
