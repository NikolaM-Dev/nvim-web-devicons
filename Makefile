all: colors style-check lint

colors:
	nvim --headless -c 'source scripts/generate_colors.lua' -c 'qall'

style-check:
	stylua . --check

style-fix:
	stylua .

lint:
	luacheck .

upstream:
	git pull upstream master

.PHONY: all colors style-check style-fix lint
