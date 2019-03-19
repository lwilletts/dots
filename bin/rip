#!/bin/sh
#
# wildefyr - 2016 (c) MIT
# rip audio CD

ARGS="$@"

FILETYPE="mp3"

usage() {
    cat >&2 << EOF
Usage: $(basename $0) [-d device] [-f mp3|wav|flac] [-o folder]
    -o | --output:   Set output folder.
    -d | --device:   Set device to rip from.
    -f | --filetype: Set encoded filetype to use. [default: ${FILETYPE}]
EOF

    test "$#" -eq 0 || exit $1
}

# regex's to clean filenames
clean_chars() {
    OUTPUT_STRING=$(printf '%s\n' "$1" | sed "s/^\([\"']\)\(.*\)\1\$/\2/g")
    printf '%s\n' "$OUTPUT_STRING" | sed "s/\(.*\)[\\]\(.*\)/\1\2/g"
}

extract() {
    printf '%s\n' "Retrieving CD metadata..."
    CDINFO=$(cdda2wav -J -g -D $CDROM 2>&1)

    printf '%s\n' "$CDINFO"
    NOTDETECTED=$(printf '%s\n' "$CDINFO" | grep "CD-Text: not detected")

    test ! -z "$NOTDETECTED" && {
        printf '%s\n' "No metadata found..."
        cdda2wav -paranoia -alltracks -c 2 dev=${CDROM}
    }

    # cleanup
    rm -f *.inf

    printf '%s\n' "Rip complete!"
}

encode() {
    case "$FILETYPE" in
        "mp3")
            for file in *.wav; do
                ffmpeg -i "$file" -codec:a libmp3lame -b:a 320K \
                    "$(printf '%s\n' "$file" | sed 's/.wav/.mp3/')"
            done

            rm -f *.wav
            ;;
        "flac")
            ;;
    esac
}

validateArgs() {
    test -z "$CDROM" && usage 1

    test ! -z "$OUTPUT_DIRECTORY" && {
        test ! -d "$OUTPUT_DIRECTORY" && mkdir -p "$OUTPUT_DIRECTORY"
        cd "$OUTPUT_DIRECTORY"
    }

    case "$FILETYPE" in
        "mp3")  break   ;;
        "ogg")  break   ;;
        "flac") break   ;;
        "wav")  break   ;;
        *)      usage 1 ;;
    esac
}

validateDeps() {
    type cdda2wav 2>&1 > /dev/null || {
        printf '%s\n' "cdda2wav is not installed on your \$PATH."
        exit 2
    }
}

main() {
    for arg in "$@"; do
        case "$arg" in -?|--*) OUTPUTFLAG=false ;; esac
        test "$OUTPUTFLAG" = "true" && OUTPUT_DIRECTORY="${OUTPUT_DIRECTORY}${arg} "
        case "$arg" in -o|--output) OUTPUTFLAG=true ;; esac
    done

    OUTPUT_DIRECTORY=$(printf '%s\n' "$OUTPUT_DIRECTORY" | rev | cut -c 2- | rev)

    for arg in "$@"; do
        test "$DEVICEFLAG"   = "true" && CDROM="$arg"    && DEVICEFLAG=false
        test "$FILETYPEFLAG" = "true" && FILETYPE="$arg" && FILETYPEFLAG=false

        case "$arg" in
            -d|--device)   DEVICEFLAG=true   ;;
            -f|--filetype) FILETYPEFLAG=true ;;
        esac
    done

    validateArgs
    validateDeps

    extract
    encode
}

test "$#" -eq 0 && usage 1

for arg in $ARGS; do
    case "$arg" in
        -q|--quiet)       QUIETFLAG=true ;;
        h|help|-h|--help) usage 0        ;;
    esac
done

test "$QUIETFLAG" = "true" && {
    main $ARGS 2>&1 > /dev/null
} || {
    main $ARGS
}
