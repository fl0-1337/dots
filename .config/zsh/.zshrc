# ZSH-CONFIG
. ~/.config/aliasrc
HISTFILE=~/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
zstyle :compinstall filename '~/.config/zsh/.zshrc'
autoload -Uz compinit
compinit

# PROMPT
echo
PROMPT=' %F{yellow}[ %5~ ] %f
%F{blue}>>%f '
RPROMPT='%F{white}%T%f'

# SYNTAX-HIGHLIGHT
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
