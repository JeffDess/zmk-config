drawing:
	@./scripts/generate-keymap-images.sh
preview:
	@./scripts/generate-keymap-images.sh -p
download:
	@./scripts/download-firmware.sh
watch:
	@find ./keymap-drawer/ | entr -s "make preview"
