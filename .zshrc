# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "/home/`whoami`/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# auto complete
autoload -Uz compinit
compinit
_comp_options+=(globdots)

# theme
ZSH_THEME="robbyrussell"

# alias
alias cls='clear'
