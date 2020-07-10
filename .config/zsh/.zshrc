# ZSH-CONFIG
. ~/.config/aliasrc
. ~/.config/funcrc
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
zstyle :compinstall filename '~/.config/zsh/.zshrc'
autoload -Uz compinit
compinit

# PROMPT
source $HOME/.config/zsh/prompt

# SYNTAX-HIGHLIGHT
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
