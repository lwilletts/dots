# sys
alias s="sudo"
alias se="sudo -e"

# permissions
alias mine="s chown $(echo $USER):fyr"
alias all="mine -R *"

# operations
alias mount="s mount"
alias umount="s umount"

alias l="ls"
alias mv="mv -f"
alias cp="cp -rf"
alias cat="nvimpager"
alias rsync="rsync -av"

alias szsh="source ~/.zshrc"
alias sxrdb="xrdb ~/.Xresources"

alias xsel="xsel -l /dev/null"

# apps
alias pu="pulsemixer"
alias todo="$VISUAL ~/todo.md"
alias ffmpeg="ffmpeg -hide_banner"
alias glances="glances --hide-kernel-threads"

# net
alias ix="curl -F 'f:1=<-' ix.io"
alias tn="transmission-remote-cli"
alias yt="youtube-dl -x -o \"%(title)s.%(ext)s\""
alias net="curl -s ipv4.icanhazip.com"
alias netflix="firefox -new-window 'https://netflix.com'"

# games
alias pug="steam steam://rungameid/439370//208.100.45.123%3Fpassword=toxic%2027015 > /dev/null 2>&1 "
alias midair="steam steam://rungameid/439370 > /dev/null 2>&1 "

# image
alias i="img"
alias mpvi="mpv --really-quit --idle &!"
alias scan="scanimage --device 'epson2:net:192.168.1.89' --mode=Color --format=png --resolution 300"

# x / dtach / tmux
alias x="startx"
alias dz="dtach -A /tmp/zsh -z zsh"
alias irc="dtach -A /tmp/irc weechat"

# ascii
alias tits="curl -sL z3bra.org/tits"
alias unix="printf '%s\n' \"\$(curl -sL git.io/unix)\""
alias taco="printf '%s\n' \"\$(curl -sL git.io/taco)\""
alias bonsai="cat $HOME/.dots/ascii/bonsai"

# misc
alias motd="cat /etc/motd"
alias issue="cat /etc/issue"
alias happy="toilet -f term -w 200 -t --gay"
alias metal="toilet -f term -w 200 -t --metal"
alias gibberish="metal < /dev/urandom"
alias snake="terminibbles -d 3 -q"
alias matrix="cmatrix -ab -u 1"
alias engage="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 \
gain +4 synth whitenoise lowpass -1 100 lowpass -1 100 lowpass -1 100 gain +2"
alias starwars="telnet towel.blinkenlights.nl"
