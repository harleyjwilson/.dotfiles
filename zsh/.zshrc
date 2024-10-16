# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Environment variable declarations
export PATH="$PATH:/opt/homebrew/opt/gawk/libexec/gnubin"
export PATH="$PATH:/Users/harleywilson/.vscode-dotnet-sdk/.dotnet"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/Users/harleywilson/.local/bin"
export PATH="$PATH:/Users/harleywilson/.asdf/installs/rust/1.78.0/env"
export PATH="$PATH:/usr/local/opt/tcl-tk/bin"
export ZSH="$HOME/.oh-my-zsh"
export MANPATH="$MANPATH:/usr/local/man"
export LANG=en_US.UTF-8

# Source powerlevel10k
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set up and load asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Update automatically without asking
zstyle ':omz:update' mode auto 

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7
ZSH_CUSTOM_AUTOUPDATE_QUIET=true

# Stop tldr from auto updating
export TLDR_AUTO_UPDATE_DISABLED=true

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
plugins=(brew colorize gh git fzf python thefuck dotenv z)

# Source oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# History Settings
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
HIST_STAMPS="yyyy-mm-dd"
HISTORY_IGNORE="(ls|cd|pwd|exit|cd)*"

setopt EXTENDED_HISTORY      # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY    # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY         # Share history between all sessions.
setopt HIST_IGNORE_DUPS      # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS  # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_SPACE     # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS     # Do not write a duplicate event to the history file.
setopt HIST_VERIFY           # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY        # append to history file (Default)
setopt HIST_NO_STORE         # Don't store history commands
setopt HIST_REDUCE_BLANKS    # Remove superfluous blanks from each command line being added to the history.

export FZF_DEFAULT_COMMAND='ag --hidden -g ""'

# Personal aliases
alias speedtest='speedtest --secure'
alias f='fuck'
alias rm='rm -r'
alias cp='cp -r'
alias pn='pnpm'
alias ls='eza'
alias find='fd'
alias df='duf'

# Set up 'thefuck'
eval $(thefuck --alias)
