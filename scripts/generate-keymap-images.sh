#!/bin/sh

ROOT=$(dirname "$(readlink -f "$0")" | sed 's/\/[^/]*$//')
IMG="$ROOT/images/keymaps"
KMD="$ROOT/keymap-drawer"
KBD="urchin"

parse () {
    KBD_NAME=$1

    if keymap -c "$KMD/config.yaml" \
        parse \
        -z "$ROOT/config/$KBD_NAME".keymap >"$KMD/$KBD_NAME"_keymap.yaml \
        -l \
        "Colemak"\
        "Colemak Accents"\
        "QWERTY" \
        "QWERTY Accents"\
        "Ergo-L"\
        "Ergo-L Accents"\
        "Symbols"\
        "Navigation"\
        "Numbers"\
        "Mouse"\
        "Game"\
        ; then
        echo "Keymap Parsed"
    else
        echo "Error parsing keymap"
        exit 1
    fi
}

draw () {
    KBD_NAME=$1
    OPT=$2
    if keymap -c "$KMD/config.yaml" \
        draw "$KMD/$KBD_NAME"_keymap.yaml >"$IMG/urchin_keymap.svg" \
        ; then
        echo "Keymap Drawned"
    else
        echo "Error drawing keymap"
        exit 1
    fi
}

preview () {
    echo "Launching preview in Firefox"
    firefox "$IMG/$KBD"_keymap.svg &
}

watch () {
    echo "Launching preview and watching files..."
    find ./keymap-drawer/ \
        ./behaviors/ \
        ./layouts/ \
        ./config/*.keymap | \
        entr -s "sh $0 -i && kitten icat ""$IMG"/"$KBD""_keymap.svg"
}

init() {
    parse "$KBD"
    draw "$KBD" --keys-only
}

case "$1" in
    '-p'|'--preview')
        init
        preview
        firefox images/keymaps/urchin_keymap.svg &
        ;;
    '-w'|'--watch')
        watch
        ;;
    '-h'|'--help')
        echo 'Draw keymap from configuration and export as SVG'
        echo 'Add -p or --preview to launch preview in Firefox'
        ;;
    *)
        init
        ;;
esac
