# Git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git show-ref --verify --quiet refs/heads/master && git checkout master || (git show-ref --verify --quiet refs/heads/main && git checkout main)'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull'
alias gp="git push -u origin"
alias gs='git status'
alias gri='git rebase -i HEAD~10'
alias grc='git rebase --continue'
alias glog='git log'
alias gbl="git for-each-ref --sort='committerdate' --format='%(committerdate:short) %(refname:short)' refs/heads | sed -e 's-refs/heads/--'"
alias gsa="git stash"
alias gsp="git stash pop"

# Other aliases
alias ..="cd .."
alias c='cd'
alias '??'='gh copilot suggest -t shell'
alias p='pnpm'

# Oh My Zsh
# https://github.com/ohmyzsh/ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(asdf)
DISABLE_UPDATE_PROMPT=true
source $ZSH/oh-my-zsh.sh

# fzf
# https://github.com/junegunn/fzf
source <(fzf --zsh)

# zoxide
# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# Starship
# https://github.com/starship/starship
eval "$(starship init zsh)"

# notify-when-done
# usage: nwd <command>
nwd() {
    local cmd="$@"
    if "$@"; then
        osascript -e "display notification \"Command '$cmd' succeeded\" with title \"Your job is done\""
    else
        osascript -e "display notification \"Command '$cmd' failed\" with title \"Your job failed\""
    fi
}

export GIT_EDITOR=nano
