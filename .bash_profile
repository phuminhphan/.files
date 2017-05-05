[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


export PATH=$PATH:usr/local/mysql/bin

function nt {
  osascript -e "
  tell application \"System Events\" to tell process \"iTerm\" to keystroke \"t\" using command down
  tell application \"iTerm\" to do script \"cd '$PWD' \" in selected tab of the front window
  " > /dev/null 2>&1
}

black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'

#System controls
alias ls='ls -laG'

#Shortcuts

alias startdb='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias w='cd ~/workspace'
alias mc='memcached -d -m 24 -p 11211'

#Personal
alias de='cd ~/workspace/dreaming-elegance'
alias bb='cd ~/workspace/baguette_bros'

alias gs='git st'
alias gf='git fo'
alias dim='git diff | mate -'

alias start_apache='sudo apachectl -k restart'

function rb() {
  git push origin :$1 && git branch -D $1 && git branch $1 && git co $1
}


alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit --all'

alias el='cat /dev/null > log/development.log; cat /dev/null > log/test.log; cat /dev/null > log/passenger.3000.log; cat /dev/null > log/newrelic_agent.log;'

alias finder='/usr/bin/osascript -e "tell application \"Finder\" to open POSIX file \"`pwd`\""'

