# Exports
export EDITOR='nvim'
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Aliases
alias ll='ls -la'
alias ..='cd ..'
alias cls='clear'

# Settings
bindkey -v
histfile=~/.histfile
histsize=2000
savehist=2000
setopt autocd notify

# Set up keybindings for Vi mode indicator
function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne "\e[1;31m[NORMAL] \e[0m"
  else
    echo -ne "\e[1;32m[INSERT] \e[0m"
  fi
  zle reset-prompt
}
zle -N zle-keymap-select
zle-line-init() { zle -K viins; zle reset-prompt }
zle -N zle-line-init

# Basic prompt customization
PROMPT='%F{cyan}%n@%m %F{blue}%~ %F{reset}$ '


# Enable auto-completion
autoload -Uz compinit
compinit
_comp_options+=(globdots)

# Enable syntax highlighting if installed (optional)
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
f
