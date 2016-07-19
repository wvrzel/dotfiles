# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"

# --------------------- bullet train config ---------------------------
# Prompt
#BULLETTRAIN_PROMPT_CHAR=\$  # Character to be show before any command
#BULLETTRAIN_PROMPT_ROOT=true  # Highlight if running as root
#BULLETTRAIN_PROMPT_SEPARATE_LINE=true  # Make the prompt span across two lines
#BULLETTRAIN_PROMPT_ADD_NEWLINE=true  # Adds a newline character before each prompt line

# Status
#BULLETTRAIN_STATUS_SHOW=true  # Show/hide that segment
#BULLETTRAIN_STATUS_EXIT_SHOW=false  # Show/hide exit code of last command
#BULLETTRAIN_STATUS_BG=green  # Background color
#BULLETTRAIN_STATUS_ERROR_BG=red  # Background color of segment when last command exited with an error
#BULLETTRAIN_STATUS_FG=black  # Foreground color

# Time
#BULLETTRAIN_TIME_SHOW=true  # Show/hide that segment
#BULLETTRAIN_TIME_12HR=false  # Format time using 12-hour clock (am/pm)
#BULLETTRAIN_TIME_BG=''  # Background color
#BULLETTRAIN_TIME_FG=''  # Foreground color

# Custom
#BULLETTRAIN_CUSTOM_MSG=false  # Free segment you can put a custom message
#BULLETTRAIN_CUSTOM_BG=black  # Background color
#BULLETTRAIN_CUSTOM_FG=black  # Foreground color

# Context
#BULLETTRAIN_CONTEXT_SHOW=false  # Show/hide that segment
#BULLETTRAIN_CONTEXT_BG=black  # Background color
#BULLETTRAIN_CONTEXT_FG=default  # Foreground color
#BULLETTRAIN_CONTEXT_DEFAULT_USER=none  # Default user. If you are running with other user other than default, the segment will be showed.
#BULLETTRAIN_IS_SSH_CLIENT=none  # If true, the segment will be showed.

# Python virtualenv (+Pyenv)
BULLETTRAIN_VIRTUALENV_SHOW=false  # Show/hide that segment
#BULLETTRAIN_VIRTUALENV_BG=yellow  # Background color
#BULLETTRAIN_VIRTUALENV_FG=white  # Foreground color
#BULLETTRAIN_VIRTUALENV_PREFIX=🐍  # Prefix of the segment

# node.js nvm
BULLETTRAIN_NVM_SHOW=false  # Show/hide that segment
#BULLETTRAIN_NVM_BG=green  # Background color
#BULLETTRAIN_NVM_FG=white  # Foreground color
#BULLETTRAIN_NVM_PREFIX="⬡ "  # Prefix of the segment

# Ruby RVM/Rbenv
BULLETTRAIN_RUBY_SHOW=false  # Show/hide that segment
#BULLETTRAIN_RUBY_BG=magenta  # Background color
#BULLETTRAIN_RUBY_FG=white  # Foreground color
#BULLETTRAIN_RUBY_PREFIX="♦"  # Prefix of the segment

# Go
#BULLETTRAIN_GO_SHOW=false  # Show/hide that segment
#BULLETTRAIN_GO_BG=green  # Background color
#BULLETTRAIN_GO_FG=white  # Foreground color
#BULLETTRAIN_GO_PREFIX=go  # Prefix of the segment

# Dir
#BULLETTRAIN_DIR_SHOW=true  # Show/hide that segment
#BULLETTRAIN_DIR_BG=blue  # Background color
#BULLETTRAIN_DIR_FG=white  # Foreground color
#BULLETTRAIN_DIR_CONTEXT_SHOW=false  # Show user and machine in an SCP formatted style
#BULLETTRAIN_DIR_EXTENDED=1  # Extended path (0=short path, 1=medium path, 2=complete path, everything else=medium path)

# Git
#BULLETTRAIN_GIT_SHOW=true  # Show/hide that segment
#BULLETTRAIN_GIT_COLORIZE_DIRTY=false  # Set BULLETTRAIN_GIT_BG to BULLETTRAIN_GIT_COLORIZE_DIRTY_COLOR in dirty state
#BULLETTRAIN_GIT_COLORIZE_DIRTY_COLOR=yellow  # BULLETTRAIN_GIT_BG in dirty state
#BULLETTRAIN_GIT_BG=white  # Background color
#BULLETTRAIN_GIT_FG=black  # Foreground color
#BULLETTRAIN_GIT_EXTENDED=true  # 
#BULLETTRAIN_GIT_PREFIX=""  # Prefix
#BULLETTRAIN_GIT_SUFFIX=""  # Suffix
#BULLETTRAIN_GIT_DIRTY="✘"  # Icon for dirty state
#BULLETTRAIN_GIT_CLEAN="✔"  # Icon for clean state
#BULLETTRAIN_GIT_ADDED="%F{green}✚%F{black}"  # Icon for added files on stage
#BULLETTRAIN_GIT_MODIFIED="%F{blue}✹%F{black}"  # Icon for modified files
#BULLETTRAIN_GIT_DELETED="%F{red}✖%F{black}"  # Icon for delete files on stage
#BULLETTRAIN_GIT_UNTRACKED="%F{yellow}✭%F{black}"  # Icon for untracked files
#BULLETTRAIN_GIT_RENAMED="➜"  # Icon for renamed
#BULLETTRAIN_GIT_UNMERGED="═"  # Icon for unmerged state
#BULLETTRAIN_GIT_AHEAD=" ⬆"  # Icon for ahead state from remote
#BULLETTRAIN_GIT_BEHIND=" ⬇"  # Icon for behind state from remote
#BULLETTRAIN_GIT_DIVERGED=" ⬍"  # Icon for diverged state from remote

# Mercurial/HG
BULLETTRAIN_HG_SHOW=false
# ------------------- bullet train config end ------------------------------

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(battery catimg chucknorris colorize command-not-found common-aliases copydir copyfile cp emoji-clock extract debian git gitignore jsontoolsi per-directory-history python rsync sprunge taskwarrior themes vi-mode wd)

# User configuration

  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=de_DE.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Own Stuff
chuck_cow
echo "\nYour prompt, sir:"

alias fucking=sudo
alias fuck=su

alias rm='rm -rf'

.() { nautilus . 2> /dev/null }

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/mischa/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
