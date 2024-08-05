# Keymap Drawer

Documentation: [caksoylar/keymap-drawer](https://github.com/caksoylar/keymap-drawer)

## Installation

The python package must be built and run from source until ZMK modules support
is released:

```bash
# Needed only until > v0.17 is released
git clone https://github.com/caksoylar/keymap-drawer.git
cd keymap-drawer
pipx install poetry
poetry install
````

Then activate the package in this shell and return to ZMK Config:

```bash
poetry shell
cd ../zmk-config
```

## Usage

Parse and draw the keymap:

```bash
scripts/generate-keymay-images.sh
```

Alternatively, open a preview in the browser:

```bash
scripts/generate-keymay-images.sh -p
```
