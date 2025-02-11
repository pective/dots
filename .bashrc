#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

fastfetch -c examples/8.jsonc

alias pman='sudo pacman'
alias vim='nvim'
alias ls='eza -alX --color=always --group-directories-first'
alias rm='trash -v'
alias grep='grep --color=auto'

gcom() {
	git add .
	git commit -m "$1"
}
lazyg() {
	git add .
	git commit -m "$1"
	git push
}

alias ..='cd ..'
alias ...='cd ../..'

eval "$(zoxide init bash)"

PS1='\[\e[91;1m\][\[\e[93m\]\u\[\e[92m\]@\[\e[94m\]\h\[\e[39m\] \[\e[95m\]\w\[\e[91m\]]\\$\[\e[0m\] '

# fnm
FNM_PATH="/home/pec/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
