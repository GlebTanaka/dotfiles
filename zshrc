# Git
# Load version control informatiom
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' on (%F{051}%b%F{reset_color})' # color: 00ffff Turkies

# Set up the prompt (wiht hit branch name)
setopt PROMPT_SUBST

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
## for CoreNLP library
export CLASSPATH="/Users/glebtanaka/stanford-corenlp-4.5.4/*"
## for postgreSQL
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
## for mysql-client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
## for Anaconda
# export PATH="/opt/homebrew/anaconda3/bin:$PATH"  # commented out by conda initialize
## for neovim-remote
export PATH="/Users/glebtanaka/Library/Python/3.11/bin:$PATH"
# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'

# Customize Promt(s)
# Promt Statement                                                              
#http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
PS1='%n'; #username
PS1+=' in [%F{111}%~%F{reset_color}]'; #current directory color: 87afff gray blue
PS1+='${vcs_info_msg_0_}' # current git branche
PS1+=$'\n''%F{130}$ '; #promt color: af5f5f Orange
PS1+='%F{reset_color}'; #restet colors
export PS1;

#RPROMPT='%*'

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Add n version manager for node
export PATH="$PATH:$N_PREFIX/bin" # this is the variable for /Users/glebtanaka/.n

# SDKMAN
export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# zoxide initialization
eval "$(zoxide init zsh)"

# Write Handy Functions
function mkcd() {
    mkdir -p "$@" && cd "$_";
}

# Use ZSH Plugins

# ...and Other Suprises

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

