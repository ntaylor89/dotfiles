# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh

DEFAULT_USER=$(whoami)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby)

source $ZSH/oh-my-zsh.sh
source ~/.misc/pretty/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en-US.UTF-8"
export LC_MESSAGES="en-US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Preferred editor for local and remote sessions
export EDITOR="vim"

# Alias 'hub' to 'git'
eval "$(hub alias -s)"

# Git utils
alias 'git?'='git status -s'
alias 'g?'='git?'
alias ggpullr="git pull --rebase"
alias ggpullur="git pull --rebase upstream master"
alias git-delete-merged='git branch --merged master | grep -v master | xargs git branch -d'
alias git-kick='git commit --amend --no-edit && git push -f'

# Rails grep
alias greprr="grep --exclude-dir=log --exclude=tags --exclude-dir=temp --exclude-dir=public"

# Docker utils
alias docker-up='eval $(docker-machine env)'
alias docker-kill-latest='docker kill $(docker ps -l -q)'

# Virtualcandy Configuration
# source ~/.virtualcandy/src/virtualcandy.zsh
# VC_DEFAULT_VENV_NAME='.venv'
# VC_DEFAULT_VENV_REQFILE='requirements.txt'
# VC_AUTO_ACTIVATION=true

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
