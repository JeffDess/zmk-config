#!/bin/sh

find firmware -maxdepth 1 -type f -name '*.uf2' -delete
gh run download -n firmware -D firmware
xdg-open ~/repos/zmk-config/firmware
