# ///////////////////
# Default config
# ///////////////////

histfile=~/.histfile
histsize=2000
savehist=2000
setopt autocd notify
bindkey -v

zstyle :compinstall filename "/home/`whoami`/.zshrc"

# auto complete
autoload -Uz compinit
compinit
_comp_options+=(globdots)

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 14

export EDITOR='nvim'
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

plugins=(git)
ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

source $ZSH/oh-my-zsh.sh

# ///////////////////
# User config
# ///////////////////

alias cls="clear"

# ///////////////////
# Use manjaro powerline 
# /////////////////// 
#
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
