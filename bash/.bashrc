# Bash shell configuration

export PAGER=less
export EDITOR=vim

umask 022

# show all files
alias ls="ls -lahG"

# highlight occurrences of search term in grep
alias grep="egrep --color"

# configure PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
source ~/.custom_locations.sh

# git autocomplete script
source ~/.git-completion.bash
source ~/.git-prompt.sh

#Add git status to your PS1
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\n\[\e[32m\]\u@\h \[\e[36m\]\W\[\e[1;36m\]$(__git_ps1)\n\[\e[0;32m\]$\[\e[0m\] '
