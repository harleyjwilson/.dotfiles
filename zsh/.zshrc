# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew completions
autoload -Uz compinit
compinit

# Environment variable declarations
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Source powerlevel10k
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set up and load asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
autoload -Uz compinit && compinit

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

# Fzf settings
# export FZF_DEFAULT_COMMAND='ag --hidden -g ""'

# Personal aliases
alias speedtest='networkQuality'
alias f='fuck'
alias rm='rm -r'
alias cp='cp -r'
alias pn='pnpm'
alias ls='eza'
alias find='fd'
alias df='duf'
alias top='btm'
# alias cat='bat'

# Set up 'thefuck'
eval $(thefuck --alias)

# Set up 'atuin'
eval "$(atuin init zsh)"

# Created by `pipx` on 2025-04-07 10:06:13
export PATH="$PATH:/Users/harleywilson/.local/bin"

# pnpm
export PNPM_HOME="/Users/harleywilson/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
