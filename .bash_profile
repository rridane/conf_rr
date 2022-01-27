# GIT 
alias gts="git status" 
alias gsth="git stash" 
alias gcm="git commit -m" 
alias gal="git add --all" 
alias gp="git push" 
alias gl="git log" 
alias gb="git branch" 
alias gc='git checkout'
alias gcb='git checkout -b'
alias gd="git diff"
alias gm="git merge"

# SYMFONY 
alias sfcc="php bin/console cache:clear" 
alias sfad="php bin/console assetic:dump" 
alias sfaw="php bin/console assetic:watch" 
alias server="php bin/console server:run"
alias pbc="php bin/console"

# RACCOURCIS 
alias www="cd /c/wamp64/www/" 
alias undeces="cd /C/wamp64/www/undecesquatre/" 
alias wiki="cd /C/wamp64/www/wikiDari/"

#CMD 
 alias ll='ls -l'
alias ls='ls -F --color=auto --show-control-chars'

# Release

alias release="if git-branch-is dev; then npm run release && git push && git checkout master && git merge dev && git push && cap rctint deploy && git checkout dev; fi"

alias dcp="docker-compose"
alias exe="docker exec -it"
alias sshome="ssh rridane@192.168.1.27"
alias ssmaster="ssh rridane@192.168.1.22"
alias k="kubectl"
alias lastTag="git describe --tags `git rev-list --tags --max-count=1`"
alias nvim="nvim -u ~/AppData/Local/nvim/init.nvim"

# tmux

alias tinv=". invoice_tmux.sh"
alias teul=". euler_tmux.sh"

# LIVRAISONS
alias patchrctint="git push && npm run release:patch && git push && git push --tags && git checkout rctint && git merge dev && git push"
alias patchrctext="git checkout rctext && git merge rctint && git push"
