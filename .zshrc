eval "$(starship init zsh)"
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
alias ls="exa --color=auto"
alias l="exa -lbah --icons"
alias la="exa -labgh --icons"
alias ll="exa -lbg --icons"
alias lsa="exa -lbagR --icons"
alias lst="exa -lTabgh --icons"
alias nv=nvim
alias j=joshuto
alias rm=trash
alias work="cd ~/WorkSpace"
alias quit="touch /tmp/noexitapp&&exit 1"
source /etc/environment
