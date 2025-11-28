# dot-files

Sets up and keeps up to date the development tools.

## Requirements

- [Homebrew](https://brew.sh/)
- git
- curl

## Contents

- [iterm2](https://iterm2.com/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- `Meslo LG M DZ Regular Nerd Font Complete.ttf` - sets up the font, required by `NvimTree` and `Lualine(Status line)`

## Instructions

Clone this repo to the home `~` directory:

```bash
$ cd ~
$ git init
$ git remote add origin https://github.com/tomgasaner/dot-files.git
$ git pull origin main
```

Run `make` command to see the available options:

```bash
$ make
install              Install iterm2, tmux, zsh, font
install-nvim         Install tomgasaner/nvim-installer
remove-nvim          Remove tomgasaner/nvim-installer
```

Running `make install` will install or upgrade the components. Then:

- configure `.gitconfig` with your credentials
- iTerm Preferences → Profiles → Text - select `Meslo Nerd` font
- iTerm Preferences → Profiles → Colors - select `tokyonight_moon` preset(add by double-clicking the file)

Running `make install-nvim` additionally installs or upgrades [my Neovim distribution](https://github.com/rustamgasanov/nvim-installer).

## References

[Manual instructions on iTerm2 + oh my zsh + solarized + Meslo powerline font](https://gist.github.com/kevin-smets/8568070)

[Follow updates on the colorschemes for iterm2 and tmux](https://github.com/folke/tokyonight.nvim/tree/main/extras)
