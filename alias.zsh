alias ggpullr="git pull --rebase origin main"
alias ggpullur="git pull --rebase upstream main"
alias git-delete-merged="git branch --merged main | grep -v main | xargs git branch -d"
alias gkick="git commit --amend --no-edit && git push -f"

# Rails grep
alias greprr="grep --exclude-dir=log --exclude=tags --exclude-dir=temp --exclude-dir=public"

# Rails DB aliases
alias rdc="rails db:create"
alias rdd="rails db:drop"
alias rdm="rails db:migrate"
alias rds="rails db:setup"

# Rails aliases
alias rs="rails s"
alias rc="rails c"
alias rt="rails t"
alias rg="rails g"
alias rgm="rails g migration"

# Docker aliases
alias doc="docker"
alias docc="docker-compose"
