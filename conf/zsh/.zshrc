source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias pls="brew"
alias vim="nvim"
alias plz="brew upgrade;"
alias starwars="telnet towel.blinkenlights.nl"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fzf {{{
# colors
export FZF_DEFAULT_OPTS='
  --color fg:7,bg:0,hl:1,fg+:0,bg+:4,hl+:1,info:5
  --color prompt:6,spinner:2,pointer:1,marker:3,header:2
'
# make fzf use ripgrep
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/usr/local/opt/node/bin:$PATH"
export PATH="/usr/local/opt/npm/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export SDKMAN_DIR="/Users/ollegz/.sdkman"
[[ -s "/Users/ollegz/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ollegz/.sdkman/bin/sdkman-init.sh"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/ollgyn/.profile
eval "$(/opt/homebrew/bin/brew shellenv)"

plz

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# bun completions
[ -s "/Users/ollgyn/.bun/_bun" ] && source "/Users/ollgyn/.bun/_bun"
