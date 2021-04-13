alias gs="git status"
alias gcm="git commit --message"
alias gp="git push"

function ga --description 'git add'
    if test -n "$argv[1]"
        git add $argv[1]
    else
        git add .
    end
end
