# ZMK Config

ZMK firmware configuration for Corne and Urchin keyboards, optimized for
English/French/Programming.

![My Urchin 34 keys keyboard](images/urchin.jpg)

Since the Corne (36 keys) and Urchin (34 keys) have similar layouts, both
keyboards share the same configuration. The only exception is the combos using
thumb keys, which are in their own files ([combos_34](behaviors/combos_34.dtsi)
and [combos_36](behaviors/combos_36.dtsi)). Keyboards also have their own keymap
files, but in pratice they use the same mappings. Both firmwares are generated
simultaneously with Github Actions.

![My Corne 36 keys keyboard](images/corne36.jpg)

## Features

- QWERTY, [Colemak-DH](https://colemakmods.github.io/mod-dh/)
  and [Ergo-L](https://ergol.org) layouts
- French characters support with dead key and one accent layer per layout
- 5 columns with nice!nano v2 and nice!views
- Home row mods
- Mouse keys support
- Gaming Layer (shifted WASD position, free of homerow mods)
- Cursor/Scroll toggle, DPI cycling and bootloader mode keybindings for
  [Ploopy Nano Trackball](https://github.com/ploopyco/nano-trackball)
- Easy to read files, thanks to
  [zmk-helpers](https://github.com/urob/zmk-helpers)
- Nice!View Urchin animation on right side of Urchin (credits: [GPeye](https://github.com/gpeye/urchin-peripheral-animation))

## Keymap

![Keymap drawing of all layers and combos](images/keymaps/urchin_keymap.svg)

**Legend**

| Icon                                                 | Description                 |
|:----------------------------------------------------:|-----------------------------|
| ![Mouse Left Click](images/icons/click_left.svg)     | Mouse left click            |
| ![Mouse Middle Click](images/icons/click_middle.svg) | Mouse middle click          |
| ![Mouse Right Click](images/icons/click_right.svg)   | Mouse right click           |
| ![Mouse Scroll Toggle](images/icons/scroll.svg)      | Toggle mouse scroll (trackball/scrollball) |
| ![Mouse Scroll](images/icons/scroll_right.svg)       | Directional mouse scroll    |
| ![Mouse Cursor Move](images/icons/cursor_right.svg)  | Move mouse pointer          |
| ![Space](images/icons/space.svg)                     | Space                       |
| ![Non-Breaking Space](images/icons/space_nb.svg)     | Non-Breaking Space          |
| ![Backspace](images/icons/backspace.svg)             | Backspace                   |
| ![Delete](images/icons/delete.svg)                   | Delete                      |
| ![Tab](images/icons/tab.svg)                         | Tab                         |
| ![Enter](images/icons/return.svg)                    | Return / Enter              |
| ![Printscreen](images/icons/printscreen.svg)         | Printscreen                 |
| ![Cut](images/icons/cut.svg)                         | Cut                         |
| ![Copy](images/icons/copy.svg)                       | Copy                        |
| ![Paste](images/icons/paste.svg)                     | Paste                       |
| ![Media Play/Pause](images/icons/play_pause.svg)     | Play / Pause                |
| ![Media Previous Track](images/icons/media_prev.svg) | Previous track              |
| ![Media Next Track](images/icons/media_next.svg)     | Next track                  |
| ![Media Volume Up](images/icons/vol_up.svg)          | Volume up                   |
| ![Media Volume Down](images/icons/vol_down.svg)      | Volume down                 |
| ![Bluetooth Clear](images/icons/bt_clear.svg)        | Clear Bluetooth profile     |
| ![Bluetooth Previous](images/icons/bt_prev.svg)      | Previous Bluetooth profile  |
| ![Bluetooth Next](images/icons/bt_next.svg)          | Next Bluetooth profile      |
| ![Bluetooth Output Toggle](images/icons/out_tog.svg) | Toggle Bluetooth/USB output |
| ![Soft Off](images/icons/power_stanby.svg)           | Soft off (hold 3 seconds)   |

For more details, head to the [urchin.keymap](config/urchin.keymap) or
[corne.keymap](config/corne.keymap) source files.

## Behaviors

The keymap uses a few behaviors in order to make everything work:

- [Combos](behaviors/combos.dtsi)
- [Hold-Tap (Home Row Mods)](behaviors/hold-tap.dtsi)
- [Macros](behaviors/macros.dtsi)
- [Mod-Morph](behaviors/mod-morph.dtsi)

## Layouts

The three alpha layers (QWERTY,
[Colemak-DH](https://colemakmods.github.io/mod-dh/) and
[Ergo-L](https://ergol.org)) are mapped to the
[Canadian Multilingual Standard (CSA)](https://commons.wikimedia.org/wiki/File:KB_Canadian_Multilingual_Standard.svg),
but it can easily be adapted to other layout by copying
[canadian-multilingual-standard.dtsi](layouts/canadian-multilingual-standard.dtsi)
and changing the macros accordingly. I've always used this layout, it's just
more convenient for me to base my layout on it. This way I don't have to change
whenever I switch keyboards.

![Urchin with Nano Trackball](images/urchin-with-nano.jpg)

## Scripts

1. Export an image of the keymap:

  ```sh
  make drawing
  ```

1. Export an image of the keymap and open in browser:

  ```sh
  make preview
  ```

1. Download firmware and open file explorer:

  ```sh
  make download
  ```

## References

- [Corne Keyboard](https://github.com/foostan/crkbd)
- [Urchin Keyboard](https://github.com/duckyb/urchin)
- [Ploopy Nano Trackball](https://github.com/ploopyco/nano-trackball)
