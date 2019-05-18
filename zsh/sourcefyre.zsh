type fyrerc 2>&1 > /dev/null && {
    test ! -z "$DISPLAY" && {
        . fyrerc
    }
}
