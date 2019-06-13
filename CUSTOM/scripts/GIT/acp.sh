# scripts checks for user-defined branch name
# if no branch name was specified, it defaults to "origin master"

acp () {
        if [[ -z "$2" ]]; then  
                git add -A;git commit -m "$1";git push origin master
        else
                git add -A;git commit -m "$1";git push origin "$2"
        fi
}
