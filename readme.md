# ZMK Config

Configuration of a Corne keyboard firmware for ZMK, optimized for English/French/Programming.

![My Corne 36 keys keyboard](images/corne36.jpeg)

## Features

* QWERTY layout
* 5 columns, 36 keys
* Home row mods
* French characters support with a single dead key and accent layer
* Mouse keys support (left/right clicks are good, scroll and movements still need a little work)
* Cursor/Scroll toggle with [Ploopy Nano Trackball](https://github.com/ploopyco/nano-trackball)
* Easy to read files, thanks to the [zmk-nodefree-config](https://github.com/urob/zmk-nodefree-config) helper.

## Keymap

The keymap is made out of 6 layers:

1. QWERTY (DEF)
2. Accents (ACC)
3. Navigation (NAV)
4. Symbols (SYM)
5. Numbers (NUM)
6. Mouse (MOU)

For the exact layout, see the [corne.keymap](config/corne.keymap) file.

## Behaviors

The keymap uses a few tricks to make the typing experience more enjoyable:

 * [Combos](behaviors/combos.dtsi)
 * [Hold-Tap (Home Row Mods)](behaviors/hold-tap.dtsi)
 * [Macros](behaviors/macros.dtsi)
 * [Mod-Morph](behaviors/mod-morph.dtsi)

## Layouts

The layout is currently based on Canadian Multilingual Standard, but it can easily be adapted to other layout by copying [canadian-multilingual-standard.dtsi](layouts/canadian-multilingual-standard.dtsi) and changing the macros accordingly.
