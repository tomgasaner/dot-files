# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
if [[ -n "$SSH_CONNECTION" ]] || [[ "$TERM" == "linux" ]]; then
    # Logging via SSH or TTY(directly) won't support Powerline/Nerd fonts(agnoster theme)
    ZSH_THEME="robbyrussell"
else
    ZSH_THEME="agnoster"
fi

# To remove "user@hostname" from the beginning of the prompt
DEFAULT_USER=$USER

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=14

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras kubectl)

source $ZSH/oh-my-zsh.sh

# Set locales
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# MacOS Apple Silicon only, homebrew
[[ -d /opt/homebrew/bin ]] && export PATH="/opt/homebrew/bin:$PATH"

# User bin
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# Bun completions
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# Kubeswitch: https://github.com/danielfoehrKn/kubeswitch/blob/master/docs/installation.md
if command -v switcher &>/dev/null; then
  source <(switcher init zsh)
  source <(switch completion zsh)
  alias s=switch
fi

# Aliases
alias ll="ls -alFh"
alias g="nocorrect git"
alias grep="GREP_COLOR='0;30;43' grep --color"
alias rake="noglob rake"
alias tml="tmux list-sessions"
alias tma="tmux attach || tmux new -s S1"
alias b="bundle"
alias be="bundle exec"
alias d="docker"
alias dc="docker-compose"
alias n="nvim"
alias t="terraform"

