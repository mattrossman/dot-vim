function fish_prompt
    set_color $fish_color_cwd
    echo -n (whoami)@(hostname)" "
    set_color blue
    echo -n (basename $PWD)
    set_color red
    echo -n (parse_git_branch)
    set_color normal
    echo -n ' $ '

end

function parse_git_branch
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
end

