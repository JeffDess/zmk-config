# ZMK Config

Configuration of a Corne keyboard firmware for ZMK, optimized for English/French/Programming.

![My Corne 36 keys keyboard](images/corne36.jpeg)

## Features

* QWERTY layout
* Corne 5 columns with nice!nano v2 and nice!views
* Home row mods
* French characters support with a single dead key and accent layer
* Mouse keys support
* Cursor/Scroll toggle with [Ploopy Nano Trackball](https://github.com/ploopyco/nano-trackball)
* Easy to read files, thanks to the [zmk-nodefree-config](https://github.com/urob/zmk-nodefree-config) helper

## Keymap

The keymap has 6 layers:

1. QWERTY (DEF)
2. Accents (ACC)
3. Navigation (NAV)
4. Symbols (SYM)
5. Numbers (NUM)
6. Mouse (MOU)

For the complete layout, head to the [corne.keymap](config/corne.keymap) file.

## Behaviors

The keymap uses a few behaviors in order to make everything work:

 * [Combos](behaviors/combos.dtsi)
 * [Hold-Tap (Home Row Mods)](behaviors/hold-tap.dtsi)
 * [Macros](behaviors/macros.dtsi)
 * [Mod-Morph](behaviors/mod-morph.dtsi)

## Layouts

The layout is currently based on [Canadian Multilingual Standard (CSA)](https://commons.wikimedia.org/wiki/File:KB_Canadian_Multilingual_Standard.svg), but it can easily be adapted to other layout by copying [canadian-multilingual-standard.dtsi](layouts/canadian-multilingual-standard.dtsi) and changing the macros accordingly. I've always used this layout, it's just more convenient for me to base my layout on it. This way I don't have to change whenever I switch keyboards.
