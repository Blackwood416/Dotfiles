eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export HISTSIZE=50000
export HISTFILE=~/.zsh_history
export SAVEHIST=50000
setopt appendhistory
setopt extendedhistory
setopt sharehistory
setopt incappendhistory
setopt correct
setopt interactive_comments
autoload -Uz compinit
compinit -u
eval "$(sheldon source)"
alias md=mkdir
alias rd=rmdir
alias ls="eza --color=auto"
alias l="eza -lbah --icons"
alias la="eza -labgh --icons"
alias ll="eza -lbg --icons"
alias lsa="eza -lbagR --icons"
alias lst="eza -lTabgh --icons"
alias rm=trash
alias j=joshuto
alias v=nvim
source /etc/environment
