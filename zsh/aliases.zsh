# sys
alias s="sudo"
alias se="sudo -e"
alias off="poweroff"
alias firmware="sudo systemctl reboot --firmware-setup"

# permissions
alias mine="s chown $USER:fyr"
alias all="mine -R *"

# operations
alias mount="s mount"
alias umount="s umount"

alias mv="mv -i"
alias df="df -h"
alias cp="cp -ri"
alias path="readlink -f"
alias trash="~/tmp/trash"
alias rsync="rsync -a --info=progress2"

alias xsel="xsel -l /dev/null"
alias szsh="source ~/.zshrc"

# apps
alias vol="pulsemixer"
alias htop="htop -t"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias todo="$EDITOR $HOME/usr/notes/todo.md"
alias ffmpeg="ffmpeg -hide_banner"
alias glances="glances --hide-kernel-threads"

# audio
alias sinks="pacmd list-sinks|awk '/index:/ {print \$0}; /name:/ {print \$0}; /device\.description/ {print \$0}'"
alias sources="pacmd list-sources|awk '/index:/ {print \$0}; /name:/ {print \$0}; /device\.description/ {print \$0}'"
alias record="ffmpeg -f pulse -i alsa_input.usb-Focusrite_Scarlett_Solo_USB-00.analog-stereo.remapped"

# net
alias ix="curl -F 'f:1=<-' ix.io"
alias io="curl -sT- p.iotek.org"
alias tn="tremc"
alias ytd="youtube-dl"
alias ytm="youtube-dl \"\$(mpvc -f '%path%')\""
alias rss="newsboat -q"
alias net="curl -s ipv4.icanhazip.com"
alias net6="curl -s ipv6.icanhazip.com"
alias wget="wget --no-hsts"
alias serv="mosh phosphor"
alias remote="mosh remote"

# games
alias game1="cd $GAME1"
alias game2="cd $GAME2"
alias cfg="vi $GAME1/Midair\ Community\ Edition/MidairCE/Binaries/*.cfg"
alias madir="$GAME1/Midair\ Community\ Edition/MidairCE/"

# file handling
alias i="img"
alias p="zathura"
alias q="qutebrowser"
alias scan="scanimage --device 'epson2:net:192.168.1.121' --mode=Color --format=png --resolution 300 --output-file"
alias strip="jhead -de"

# x / dtach / tmux
alias x="startx"
alias dz="dtach -A /tmp/zsh -z zsh"
alias irc="dtach -A /tmp/irc weechat"

# ascii
alias tits="curl -sL z3bra.org/tits"
alias unix="printf '%s\n' \"\$(curl -sL git.io/unix)\""
alias taco="printf '%s\n' \"\$(curl -sL git.io/taco)\""
alias bonsai="< ~/.dots/ascii/bonsai"

# misc
alias happy="toilet -f term -w 200 -t --gay"
alias metal="toilet -f term -w 200 -t --metal"
alias gibberish="metal < /dev/urandom"
alias snake="terminibbles -d 3 -q"
alias matrix="cmatrix -ab -u 1"
alias engage="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 \
gain +4 synth whitenoise lowpass -1 100 lowpass -1 100 lowpass -1 100 gain +2"
alias starwars="telnet towel.blinkenlights.nl"
alias machine="clear; lstopo-no-graphics -.ascii; printf '\n'"

