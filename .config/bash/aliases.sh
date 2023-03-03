# ~/.config/bash/aliases.sh: set of bash aliases

# ---
# Github
# -------
alias g="git"
alias diff="git diff"
alias clone="git clone"
alias commit="git commit"
alias status="git status"
alias checkout="git checkout"
alias push="git push origin master"

alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# ---
# Navigation
# -----------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias home="cd"
alias repos="cd ~/repos" 
alias personal="cd ~/personal"

alias keyrings="cd /usr/share/keyrings"
alias sources="cd /etc/apt/sources.list.d/"

# ---
# Other
# ------
alias v="nvim"
alias vim="nvim"
alias fd="fdfind"
alias l="ls -CF"
alias ll="ls -alF"
alias mkdir="mkdir -p"
alias rm="rm -rf"
