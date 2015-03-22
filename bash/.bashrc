export PS1="\u@\h \w $ "
export PAGER=less
export EDITOR=vim

umask 022

alias ls="ls -lahG"
alias grep="egrep --color"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# android SDK
export PATH="$PATH:/Users/neil/dev/frameworks/adt/sdk/platform-tools:/Users/neil/dev/frameworks/adt/sdk/tools"

export ANDROID_HOME="/Users/neil/dev/frameworks/adt/sdk"

# git autocomplete script
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
