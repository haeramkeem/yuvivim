# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
case `hostname` in
  hk-mainframe | nvmevirt-sb)
    ZSH_THEME="af-magic"
    ;;
  *)
    ZSH_THEME="agnoster"
    ;;
esac

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

### CUSTOM SETTINGS ###

#########################
# Python 3 settings
#########################

export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/bin/python3"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/Users/haeramkim/Library/Python/3.7/bin"
alias python='python3'
alias pip='pip3'

#########################
# C++ settings
#########################

alias g17='g++ -std=c++17'
# alias ctags='/opt/homebrew/Cellar/ctags/5.8_2/bin/ctags'
# alias cpptags='/opt/homebrew/Cellar/ctags/5.8_2/bin/ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -R'

#########################
# Golang settings
#########################

export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin

#########################
# VIM settings
#########################

# Use improved
alias vi=vim
# Prevent typo
alias ci=vim

#########################
# NVM settings
#########################

# NVM basic
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#########################
# Kubectl settings
#########################

# Kubectl auto-completion
# source <(kubectl completion zsh)

# Kube-ps1
# KUBE_PS1_PREFIX=""
# KUBE_PS1_SUFFIX=""
# KUBE_PS1_CTX_COLOR="green"
# KUBE_PS1_SYMBOL_ENABLE="false"

# PS1 Setting
# PS1='[$(date +%Y/%m/%d-%H:%M)|$(kube_ps1)]'$PS1
# PS1='[$(date +%Y/%m/%d-%H:%M)]'$PS1

# kubecns
alias kubecns='kubens'

# Kubectl plugins
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

#########################
# Cilium
#########################

# Cilium w/ context
alias ciliumx='cilium --context'

#########################
# Git hacks
#########################

# Get current branch (CURrent)
alias git-cur='git rev-parse --abbrev-ref HEAD'

## git typo correction
alias gti='git'

#########################
# $PATH configuration
#########################

# Add 'sbin' to $PATH
export PATH="/usr/local/sbin:$PATH"

# PSQL
export PATH="/usr/local/opt/libkq/bin:$PATH"

#########################
# TMUX
#########################

# TMUX autostart
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    exec tmux
fi

#########################
# ZSH
#########################

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null || true # Ignore `file not found`
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null || true # Ignore `file not found`

#########################
# ETC
#########################

# Colordiff
if `colordiff --version &> /dev/null`; then
    alias diff=colordiff
else
    alias diff="diff --color"
fi

# Calm down mate
alias fuck='echo "fuck all of ya"'
alias tlqkf='echo "fuck my life"'

# Aliases
alias alphabet='echo abcdefghijklmnopqrstuvwxyz'
alias watch='watch -d -n0.5'
alias ap='ansible-playbook'

# Locale settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Clipboard
alias pwdcopy='pwd | tr -d "\n" | pbcopy'

# Functions
function tmux_flush() {
    tmux ls \
        | grep -v attached \
        | tr ':' ' ' \
        | awk '{print $1}' \
        | xargs -n1 tmux kill-session -t
}

function x509_validity() {
    cat "-" | openssl x509 -noout -startdate -enddate
}

function nocolor() {
    cat "-" | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g"
}

function tolower() {
    cat "-" | tr '[[:upper:]]' '[[:lower:]]'
}

function toupper() {
    cat "-" | tr '[[:lower:]]' '[[:upper:]]'
}

function ff() {
    grep -n "$1" $(find . -type f | grep -vE 'tags') 2>/dev/null
}

# GCP ------------------------------------------------------------------------
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/haeramkeem/Downloads/google-cloud-sdk/path.zsh.inc' ]; then
  . '/Users/haeramkeem/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/haeramkeem/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then
  . '/Users/haeramkeem/Downloads/google-cloud-sdk/completion.zsh.inc'
fi
