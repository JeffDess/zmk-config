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
<table>
<thead>
  <tr>
    <th align="center" bgcolor="#1c2128">Icon</th>
    <th>Label</th>
  </tr>
</thead>
<tbody>
<tr>
  <td align="center" bgcolor="#1c2128" bgcolor="black">
    <img width="24px" alt="Mouse Left Click" src="images/icons/click_left.svg" style="max-width: 100%;">
  </td>
  <td>Mouse left click</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Mouse Right Click" src="images/icons/click_right.svg" style="max-width: 100%;">
  </td>
  <td>Mouse right click</td>
</tr>
<tr>
   <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Mouse Scroll Toggle" src="images/icons/scroll.svg" style="max-width: 100%;">
   </td>
   <td>Toggle mouse scroll (trackball/scrollball)</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Mouse Scroll" src="images/icons/scroll_right.svg" style="max-width: 100%;">
  </td>
  <td>Directional mouse scroll</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Mouse Cursor Move" src="images/icons/cursor_right.svg" style="max-width: 100%;">
  </td>
  <td>Move mouse pointer</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Space" src="images/icons/space.svg" style="max-width: 100%;">
  </td>
  <td>Space</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Backspace" src="images/icons/backspace.svg" style="max-width: 100%;">
  </td>
  <td>Backspace</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Delete" src="images/icons/delete.svg" style="max-width: 100%;">
  </td>
  <td>Delete</td>
</tr>
<tr>
 <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Tab" src="images/icons/tab.svg" style="max-width: 100%;">
   </td>
 <td>Tab</td>
</tr>
<tr>
 <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Enter" src="images/icons/return.svg" style="max-width: 100%;">
   </td>
 <td>Return / Enter</td>
</tr>
<tr>
 <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Printscreen" src="images/icons/printscreen.svg" style="max-width: 100%;">
   </td>
 <td>Printscreen</td>
</tr>
<tr>
 <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Cut" src="images/icons/cut.svg" style="max-width: 100%;">
   </td>
 <td>Cut</td>
</tr>
<tr>
 <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Copy" src="images/icons/copy.svg" style="max-width: 100%;">
  </td>
  <td>Copy</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Paste" src="images/icons/paste.svg" style="max-width: 100%;">
  </td>
  <td>Paste</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Media Play/Pause" src="images/icons/play_pause.svg" style="max-width: 100%;">
  </td>
  <td>Play / Pause</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Media Previous Track" src="images/icons/media_prev.svg" style="max-width: 100%;">
  </td>
  <td>Previous track</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Media Next Track" src="images/icons/media_next.svg" style="max-width: 100%;">
  </td>
 <td>Next track</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Media Volume Up" src="images/icons/vol_up.svg" style="max-width: 100%;">
  </td>
  <td>Volume up</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Media Volume Down" src="images/icons/vol_down.svg" style="max-width: 100%;">
  </td>
  <td>Volume down</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Bluetooth Clear" src="images/icons/bt_clear.svg" style="max-width: 100%;">
  </td>
  <td>Clear Bluetooth profile</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Bluetooth Previous" src="images/icons/bt_prev.svg" style="max-width: 100%;">
  </td>
  <td>Previous Bluetooth profile</td>
</tr>
<tr>
  <td align="center" bgcolor="#1c2128">
    <img width="24px" alt="Bluetooth Next" src="images/icons/bt_next.svg" style="max-width: 100%;">
  </td>
  <td>Next Bluetooth profile</td>
</tr>
<tr>
   <td align="center" bgcolor="#1c2128">
     <img width="24px" alt="Bluetooth Output Toggle" src="images/icons/out_tog.svg" style="max-width: 100%;">
  </td>
  <td>Toggle Bluetooth/USB output</td>
</tr>
</tbody>
</table>


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

