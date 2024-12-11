setopt prompt_subst
autoload -Uz vcs_info
autoload -Uz compinit && compinit

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%{%F{green}%B%}+%{%b%f%}'
zstyle ':vcs_info:*' unstagedstr '%{%F{red}%B%}!%{%b%f%}'
zstyle ':vcs_info:*' formats '(%{%F{cyan}%}%b%{%f%})%u%c'
zstyle ':vcs_info:*' actionformats '(%{%F{cyan}%}%a%{%f%})%u%c'

precmd() { vcs_info }

PROMPT='%~ ${vcs_info_msg_0_}%# '

alias ll="ls -al"
