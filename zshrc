autoload -Uz vcs_info

precmd() {
    vcs_info
}

setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats ' on (%F{051}%b%F{reset_color})'

export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"
export CLASSPATH="$HOME/stanford-corenlp-4.5.4/*"

typeset -U path PATH
path=(
    /opt/homebrew/opt/postgresql@15/bin
    /opt/homebrew/opt/mysql-client/bin
    "$HOME/Library/Python/3.11/bin"
    "$HOME/.local/bin"
    /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
    "$N_PREFIX/bin"
    $path
)
export PATH

alias ls='ls -lAFh'
alias exa='exa -laFh --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'

PS1='%n in [%F{111}%~%F{reset_color}]${vcs_info_msg_0_}'$'\n''%F{130}$ %F{reset_color}'
export PS1

mkcd() {
    mkdir -p "$@" && cd "$_"
}

if exists brew; then
    export SDKMAN_DIR="$(brew --prefix sdkman-cli)/libexec"
    [[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
fi

if exists zoxide; then
    eval "$(zoxide init zsh)"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
