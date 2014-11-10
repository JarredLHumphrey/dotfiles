#Service Aliases
alias postgres="postgres -D /usr/local/var/postgres"
alias redis="redis-server /usr/local/etc/redis.conf"
alias up='rails s'

#Rbenv initialize
eval "$(rbenv init -)"

#Git branch autocomplete
source ~/bin/git-completion.bash

#Git branch in prompt
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h:\W \[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
