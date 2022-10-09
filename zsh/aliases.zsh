# sys
alias s="sudo"
alias se="sudo -e"
alias off="poweroff"
alias firmware="sudo systemctl reboot --firmware-setup"

# permissions
alias mine="s chown $USER:fyr"
alias all="mine -R *"

# operations
alias mv="mv -i"
alias df="df -h"
alias cp="cp -ri"
alias path="readlink -f"
alias trash="~/tmp/trash"
alias rsync="rsync --info=progress2"

alias xsel="xsel -l /dev/null"
alias szsh="source ~/.zshrc"

# apps
alias rt="radeontweak"
alias vol="pulsemixer"
alias htop="htop -t -s PERCENT_CPU"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias todo="$EDITOR $HOME/usr/notes/todo.md"
alias ffmpeg="ffmpeg -hide_banner"
alias glances="glances --hide-kernel-threads"

# audio
alias record="ffmpeg -f pulse -i alsa_input.usb-Focusrite_Scarlett_Solo_USB-00.analog-stereo.remapped"

# net
alias ix="curl -F 'f:1=<-' ix.io"
alias io="curl -sT- p.iotek.org"
alias tn="tremc"
alias ytd="youtube-dl"
alias ytm="youtube-dl \"\$(mpvc -f '%path%')\""
alias rss="newsboat -q"
alias net="curl -4 icanhazip.com"
alias net6="curl -6 icanhazip.com"
alias wget="wget --no-hsts"
alias serv="ssh phosphor"
alias remote="mosh remote"

# oneliners
alias coin="curl -s rate.sx"
alias eth="curl -s rate.sx/eth"
alias bit="curl -s rate.sx/bitcoin"
alias weather="curl -s wttr.in | tail -n 32 | head -n 30"

# games
alias cfg="vi /home/fyr/.steam/steam/steamapps/common/Midair\ Community\ Edition/MidairCE/Binaries/*.cfg"
alias madir="/home/fyr/.steam/steam/steamapps/common/Midair\ Community\ Edition/MidairCE/"
alias medir="/mnt/spare/steam/steamapps/common/Mass\ Effect\ Legendary\ Edition/Game"

# file handling
alias i="img"
alias p="zathura"
alias q="qutebrowser"
alias scan="scanimage --device 'epson2:net:192.168.1.121' --mode=Color --format=png --resolution 300 --output-file"
alias strip="jhead -de"
alias pdfmk="pdflatex"

# x / dtach / tmux
alias x="startx"
alias dz="dtach -A /tmp/zsh -z zsh"
alias irc="dtach -A /tmp/irc weechat"

# romac
alias keys="xkbcomp $HOME/.dots/X11/FNkeymap.xkb $DISPLAY"

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
alias engage="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 \
gain +4 synth whitenoise lowpass -1 100 lowpass -1 100 lowpass -1 100 gain +2"
alias starwars="telnet towel.blinkenlights.nl"
alias machine="clear; lstopo-no-graphics -.ascii; printf '\n'"

