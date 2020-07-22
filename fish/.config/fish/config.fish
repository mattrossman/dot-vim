alias g=git
alias y=yarn
alias p=pebble
alias lp="lpass show -F"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/matt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set PATH /Users/matt/src/android/flutter/bin $PATH
set PATH (npm config get prefix)/bin $PATH
thefuck --alias | source

# autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
