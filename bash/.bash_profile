export LANG=en_US.utf8
export LC_ALL=en_US.utf8

if [ -f $HOME/.bashrc ]; then
  source $HOME/.bashrc
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[92m\]\u@\h\[\e[0m\] \[\e[94m\]\W\[\e[0m\]\[\033[38;5;202m\]\$(parse_git_branch)\[\033[00m\] $ "
