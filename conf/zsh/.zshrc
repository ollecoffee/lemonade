# First, so Homebrew's tools win over the older ones macOS ships
eval "$(/opt/homebrew/bin/brew shellenv)"
# postgresql@18 is keg-only, so a fresh brew install doesn't link psql for us
export PATH="/opt/homebrew/opt/postgresql@18/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
# Appended, so Flutter's bundled tools never shadow Homebrew's
export PATH="$PATH:/opt/homebrew/share/flutter/bin:$HOME/.pub-cache/bin"

# Homebrew's copy, so brew upgrade keeps gcloud current
source "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.zsh.inc"
source "$HOMEBREW_PREFIX/share/google-cloud-sdk/completion.zsh.inc"

# So git commit and friends open nvim instead of the system vi
export EDITOR="nvim"

alias pls="brew"
alias plz="brew upgrade"
alias vim="nvim"
alias ls="eza --icons=always"
alias starwars="telnet towel.blinkenlights.nl"
alias sso="source $HOME/code/as-script/iam/sso.sh"
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"

# Upgrade once a day rather than per tab, so new tabs open fast
source "${${(%):-%x}:A:h}/plz.zsh"

HISTFILE=$HOME/.zhistory
SAVEHIST=50000
HISTSIZE=50000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space   # Lets a leading space keep secrets out of history
setopt hist_verify

# Quicker than Ctrl-R when you remember how a command starts
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

source <(fzf --zsh)
export FZF_DEFAULT_OPTS='
  --color fg:7,bg:0,hl:1,fg+:0,bg+:4,hl+:1,info:5
  --color prompt:6,spinner:2,pointer:1,marker:3,header:2
'
# rg is faster than find, and dotfiles/gitignored files are often what you want to open
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

eval "$(jenv init -)"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"

eval "$(starship init zsh)"

# Last, or widgets defined after it won't be highlighted
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
