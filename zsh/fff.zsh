# colour
export FFF_LS_COLORS=1
export FFF_COL1=2
export FFF_COL2=0
export FFF_COL3=1
export FFF_COL4=7
export FFF_COL5=7

# fav
export FFF_FAV1="$HOME/usr/vid"
export FFF_FAV2="$HOME/usr/vid/yt/music"
export FFF_FAV3="$HOME/usr/mus"
export FFF_FAV4="$HOME/usr/img"
export FFF_FAV5="$HOME/usr/doc"
export FFF_FAV6=""
export FFF_FAV7=""
export FFF_FAV8="$HOME/usr/torrents"
export FFF_FAV9="$HOME/tmp"

# config
export FFF_HIDDEN=0
export FFF_OPENER="fffopen"
export FFF_CD_ON_EXIT=1
export FFF_W3M_XOFFSET=0
export FFF_W3M_YOFFSET=0
export FFF_FILE_FORMAT=" %f"
export FFF_MARK_FORMAT="> %f*"

# functions
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}
