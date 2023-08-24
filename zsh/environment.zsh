umask 022
unset TERMCAP
unset MANPATH

PATH=""

EXECPATHS="
$HOME/.dots/bin
$HOME/src/fwm
/usr/local/bin
/usr/bin
/bin
/sbin
/usr/sbin
$HOME/.fzf/bin
$HOME/.local/bin"

printf '%s\n' "$EXECPATHS" | while read -r EXECPATH; do
    if [ -d "$EXECPATH" ]; then 
        PATH="$PATH:$EXECPATH"
    fi
done

export PATH=$(printf '%s\n' "$PATH" | cut -c 2-)
unset EXECPATH

# program dots
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DESKTOP_DIR="/home/fyr"
export XDG_DOWNLOAD_DIR="$HOME/tmp"
export LESSHISTFILE="$XDG_CONFIG_HOME/lesshist"
export HISTFILE="$XDG_CONFIG_HOME/histfile"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export MAIL="$XDG_CONFIG_HOME/mail"
export PYTHONPATH="$XDG_CONFIG_HOME"
export GNUPGHOME="$XDG_CONFIG_HOME"
export XAUTHORITY="$XDG_CONFIG_HOME/xauth"

export QT_QPA_PLATFORMTHEME="qt5ct"
# export QT_QPA_PLATFORM="wayland"
export BROWSER="/usr/bin/qutebrowser"

export VISUAL="nvim"
export EDITOR="nvim"
alias vi="$VISUAL"
alias vim="$VISUAL"

export PAGER="less"
export FZF_DEFAULT_OPTS='--color=bw'

# games
export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/radeon_icd.i686.json:/usr/share/vulkan/icd.d/radeon_icd.x86_64.json"
export GAME1="$HOME/.steam/steam/steamapps/common"
export COMPAT1="$HOME/.steam/steam/steamapps/compatdata"
export GAME2="/mnt/spare/steam/steamapps/common"
export COMPAT2="/mnt/spare/steam/steamapps/compatdata"

export RADV_PERFTEST=gpl
