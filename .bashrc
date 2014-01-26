export PS1="\u@\h \w $ "
export PAGER=less
export EDITOR=emacs

umask 022

alias ls="ls -lahG"
alias grep="egrep --color"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#elastic beanstalk command line tools
export PATH="$PATH:/Users/neil/dev/frameworks/AWS-ElasticBeanstalk-CLI-2.5.1/eb/macosx/python2.7"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi