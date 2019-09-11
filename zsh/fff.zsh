# colour
export FFF_LS_COLORS=1
export FFF_COL1=2
export FFF_COL2=4
export FFF_COL3=1
export FFF_COL4=7

# fav
export FFF_FAV1=~/usr/vid
export FFF_FAV2=~/usr/img
export FFF_FAV3=~/usr/mus
export FFF_FAV4=~/usr/vid/music
export FFF_FAV5=~/usr/torrents
export FFF_FAV6=
export FFF_FAV7=
export FFF_FAV8=
export FFF_FAV9=~/tmp

# config
export FFF_HIDDEN=0
export FFF_OPENER="fffopen"
export FFF_CD_ON_EXIT=1
export FFF_TRASH_CMD="rm"
export FFF_W3M_XOFFSET=0
export FFF_W3M_YOFFSET=0
export FFF_FILE_FORMAT=" %f"
export FFF_MARK_FORMAT="> %f*"

# functions
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}