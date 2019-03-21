export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

if [ -f $HOME/.bash_local ]; then
    source $HOME/.bash_local
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# NOTES:
# \e is the same as \033 for ESCAPE character
export PS1="\[\e[92m\]\u@\h\[\e[0m\] \[\e[94m\]\W\[\e[0m\]\[\033[38;5;202m\]\$(parse_git_branch)\[\033[00m\] $ "

# ALIASES
alias g=git
alias gnka='ssh a0413597@guernika.lab.inf.uc3m.es'
