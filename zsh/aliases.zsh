# sys
alias s="sudo"
alias se="sudo -e"

# permissions
alias mine="s chown $(echo $USER):fyr"
alias all="mine -R *"

# operations
alias mount="s mount"
alias umount="s umount"

alias mv="mv -f"
alias df="df -h"
alias cp="cp -rf"
alias rsync="rsync -av"

alias xsel="xsel -l /dev/null"
alias szsh="source ~/.zshrc"
alias sxrdb="xrdb ~/.Xresources"

# apps
alias vol="pulsemixer"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias todo="$EDITOR $HOME/usr/notes/todo.md"
alias ffmpeg="ffmpeg -hide_banner"
alias glances="glances --hide-kernel-threads"

# audio
alias sinks="pacmd list-sinks|awk '/index:/ {print \$0}; /name:/ {print \$0}; /device\.description/ {print \$0}'"
alias sources="pacmd list-sources|awk '/index:/ {print \$0}; /name:/ {print \$0}; /device\.description/ {print \$0}'"

# net
alias ix="curl -F 'f:1=<-' ix.io"
alias tn="transmission-remote-cli"
alias ytd="youtube-dl"
alias ytm="youtube-dl \"\$(mpvc -f '%path%')\""
alias rss="newsboat -q"
alias net="curl -s ipv4.icanhazip.com"

# games
alias cfg="vi ~/.steam/steam/steamapps/common/Midair/Midair/Binaries/*.cfg"
alias game1="cd ~/.steam/steam/steamapps/common"
alias game2="cd /mnt/speed/steamapps/common"

# image
alias i="img"
alias p="mupdf"
alias z="zathura"
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
alias machine="clear; lstopo-no-graphics -.ascii; printf '\n'"
