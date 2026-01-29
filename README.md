# dot-files

Sets up and keeps up to date the development tools.

Works with Apple Silicon Macs and Arch Linux.

## Requirements

- zsh
- git
- curl
- Only for MacOS: [Homebrew](https://brew.sh/)

## Contents

- [iTerm2](https://iterm2.com/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- `Meslo LG M DZ Regular Nerd Font Complete.ttf` - sets up the font, required by `NvimTree` and `Lualine(Status line)`
- `tokyonight_moon.itermcolors` - a Tokyo Night iTerm theme

## Instructions

Clone this repo to the home `~` directory:

```bash
$ cd ~
$ git init
$ git remote add origin https://github.com/tomgasaner/dot-files.git
$ git pull origin main
```

Run `make` to see the available commands:

```bash
$ make
install              Install iterm2, tmux, zsh, font
install-nvim         Install tomgasaner/nvim-installer
remove-nvim          Remove tomgasaner/nvim-installer
```

Running `make install` will install or upgrade the components. Then:

1. double-click on `Meslo LG M DZ Regular Nerd Font Complete.ttf` to add the Meslo font
2. double-click on `tokyonight_moon.itermcolors` to add a Tokyo Night iTerm theme
3. configure `.gitconfig` with your credentials
4. iTerm Settings → Profiles → Text - select `Meslo Nerd` font
    1. (Optional) Set the font size to 19
5. iTerm Settings → Profiles → Colors - select `tokyonight_moon` preset

Running `make install-nvim` additionally installs or upgrades [my Neovim distribution](https://github.com/tomgasaner/nvim-installer).

## References

[Manual instructions on iTerm2 + oh my zsh + solarized + Meslo powerline font](https://gist.github.com/kevin-smets/8568070)

[Follow updates on the colorschemes for iterm2 and tmux](https://github.com/folke/tokyonight.nvim/tree/main/extras)
