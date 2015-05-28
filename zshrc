# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="tjkirch_mod"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby autojump)
#[[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR=mvim

#Misc
alias f='find . -iname'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias top='top -o cpu'
alias systail='tail -f /var/log/system.log'
alias m='more'
alias df='df -h'

alias mou=open -a Mou $@

# Bundler
alias be='bundle exec'

# Shows most used commands, cool script I got this from: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"
alias grep="grep --color"
alias egrep="egrep --color"

#export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export GRADLE_HOME=~/codez/java/gradle/gradle

export PACKER_HOME=~/codez/provisioning/packer
export GOPATH=~/codez/nadnerb/go

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/heroku/bin:/usr/local/share/npm/bin:$GRADLE_HOME/bin:$PACKER_HOME:$PATH:$GOPATH/bin"

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#eval "$(rbenv init -)"

#source /usr/local/opt/chruby/share/chruby/chruby.sh
#RUBIES=(~/.rbenv/versions/*)
#source /usr/local/share/chruby/auto.sh
#chruby 1.9.3-p385-falcon

export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cert.pem
