stow_dirs = $(wildcard */)
all:
	stow --verbose --target=$$HOME --restow $(stow_dirs)

delete:
	stow --verbose --target=$$HOME --delete $(stow_dirs)
