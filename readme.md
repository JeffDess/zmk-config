# ZMK Config


ZMK firmware configuration for Corne and Urchin keyboards, optimized for
English/French/Programming.

![My Urchin 34 keys keyboard](images/urchin.jpg)

Since the Corne (36 keys) and Urchin (34 keys) have similar layouts, both
keyboards use the same configuration. The only exception is the combos using
thumb keys, which are in their own files ([combos_34](behaviors/combos_34.dtsi)
and [combos_36](behaviors/combos_36.dtsi)). Keyboards also have their own keymap
files, but in pratice they use the same mappings. Both firmwares are generated
simultaneously with Github Actions.

![My Corne 36 keys keyboard](images/corne36.jpg)

## Features

- QWERTY layout
- 5 columns with nice!nano v2 and nice!views
- Home row mods
- French characters support with a single dead key and accent layer
- Mouse keys support
- Cursor/Scroll toggle with
  [Ploopy Nano Trackball](https://github.com/ploopyco/nano-trackball)
- Easy to read files, thanks to the
  [zmk-nodefree-config](https://github.com/urob/zmk-nodefree-config) helper

## Keymap

![Keymap drawing of all layers and combos](images/keymaps/urchin_keymap.svg)

**Legend**
<style>
  td:first-child { background: #1c2128; line-height: 0.5;}
  td>img { width: 24px; }
</style>

| Icon                    | Label                       |
|:-----------------------:|-----------------------------|
| <img width="24px" alt="Mouse Left Click" src="images/icons/click_left.svg" />        | Mouse left click            |
| <img width="24px" alt="Mouse Right Click" src="images/icons/click_right.svg" />       | Mouse right click           |
| <img width="24px" alt="Mouse Scroll Toggle" src="images/icons/scroll.svg" />     | Toggle mouse scroll (trackball/scrollball) |
| <img width="24px" alt="Mouse Scroll" src="images/icons/scroll_right.svg" />            | Directional mouse scroll    |
| <img width="24px" alt="Mouse Cursor Move" src="images/icons/cursor_right.svg" />       | Move mouse pointer          |
| <img width="24px" alt="Space" src="images/icons/space.svg" />                   | Space                       |
| <img width="24px" alt="Backspace" src="images/icons/backspace.svg" />               | Backspace                   |
| <img width="24px" alt="Delete" src="images/icons/delete.svg" />                  | Delete                      |
| <img width="24px" alt="Tab" src="images/icons/tab.svg" />                     | Tab                         |
| <img width="24px" alt="Enter" src="images/icons/return.svg" />                   | Return / Enter              |
| <img width="24px" alt="Printscreen" src="images/icons/printscreen.svg" />             | Printscreen                 |
| <img width="24px" alt="Cut" src="images/icons/cut.svg" />                     | Cut                         |
| <img width="24px" alt="Copy" src="images/icons/copy.svg" />                    | Copy                        |
| <img width="24px" alt="Paste" src="images/icons/paste.svg" />                   | Paste                       |
| <img width="24px" alt="Media Play/Pause" src="images/icons/play_pause.svg" />        | Play / Pause                |
| <img width="24px" alt="Media Previous Track" src="images/icons/media_prev.svg" />    | Previous track              |
| <img width="24px" alt="Media Next Track" src="images/icons/media_next.svg" />        | Next track                  |
| <img width="24px" alt="Media Volume Up" src="images/icons/vol_up.svg" />         | Volume up                   |
| <img width="24px" alt="Media Volume Down" src="images/icons/vol_down.svg" />       | Volume down                 |
| <img width="24px" alt="Bluetooth Clear" src="images/icons/bt_clear.svg" />         | Clear Bluetooth profile     |
| <img width="24px" alt="Bluetooth Previous" src="images/icons/bt_prev.svg" />      | Previous Bluetooth profile  |
| <img width="24px" alt="Bluetooth Next" src="images/icons/bt_next.svg" />          | Next Bluetooth profile      |
| <img width="24px" alt="Bluetooth Output Toggle" src="images/icons/out_tog.svg" /> | Toggle Bluetooth/USB output |

For more details, head to the [urchin.keymap](config/urchin.keymap) or
[corne.keymap](config/corne.keymap) source files.

## Behaviors

The keymap uses a few behaviors in order to make everything work:

- [Combos](behaviors/combos.dtsi)
- [Hold-Tap (Home Row Mods)](behaviors/hold-tap.dtsi)
- [Macros](behaviors/macros.dtsi)
- [Mod-Morph](behaviors/mod-morph.dtsi)

## Layouts

The layout is currently based on
[Canadian Multilingual Standard (CSA)](https://commons.wikimedia.org/wiki/File:KB_Canadian_Multilingual_Standard.svg),
but it can easily be adapted to other layout by copying
[canadian-multilingual-standard.dtsi](layouts/canadian-multilingual-standard.dtsi)
and changing the macros accordingly. I've always used this layout, it's just
more convenient for me to base my layout on it. This way I don't have to change
whenever I switch keyboards.

![Urchin with Nano Trackball](images/urchin-with-nano.jpg)

## References

- [Corne Keyboard](https://github.com/foostan/crkbd)
- [Urchin Keyboard](https://github.com/duckyb/urchin)
- [Ploopy Nano Trackball](https://github.com/ploopyco/nano-trackball)

