# manual
hash make 2> /dev/null && {
    alias makefile="$EDITOR Makefile"
    alias menuconfig="make menuconfig"
    alias modinstall="s make modules_install"

    buildkernel() {
        test -d "./arch" && {
            make && modinstall && instkern
        } || {
            printf '%s\n' "Not in a linux kernel directory."
            return 1
        }
    }
}

# fzf
hash fzf 2> /dev/null && {
     . "$HOME/.fzf/shell/completion.zsh"
     . "$HOME/.fzf/shell/key-bindings.zsh"
}
