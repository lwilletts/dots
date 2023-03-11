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

# net
alias ix="curl -F 'f:1=<-' ix.io"
alias io="curl -sT- p.iotek.org"
alias tn="tremc"
alias net="curl -4 icanhazip.com"
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
alias strip="jhead -de"
alias findexec="fd . --exact-depth 1 -t x"

# x / dtach / tmux
alias x="startx"
alias dz="dtach -A /tmp/zsh -z zsh"
alias irc="dtach -A /tmp/irc weechat"

# ascii
alias unix="printf '%s\n' \"\$(curl -sL git.io/unix)\""
alias taco="printf '%s\n' \"\$(curl -sL git.io/taco)\""
alias white="sed 's/\x1B\[[0-9;]*[JKmsu]//g'"
alias bonsai="< ~/.dots/ascii/bonsai"

# misc
alias snake="terminibbles -d 3 -q"
alias engage="play -c2 -n synth whitenoise band -n 100 24 band -n 300 100 \
gain +4 synth whitenoise lowpass -1 100 lowpass -1 100 lowpass -1 100 gain +2"
alias machine="clear; lstopo-no-graphics -.ascii; printf '\n'"
