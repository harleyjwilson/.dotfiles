# Dotfiles

This repository is an ongoing collection of my macOS development setup.

## Checklist

### 1. Prepare OS

- Update macOS.

### 2. Install Homebrew

- Install Homebrew via `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`. This will install Xcode Command Line Tools, normally done by `xcode-select --install`, as a part of its normal setup process.

### 3. Install OhMyZSH

- Install OhMyZSH via `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### 4. Clone Repository

- Clone repository via `git clone https://github.com/harleyjwilson/.dotfiles`

### 5. Install with Homebrew

- Install applications with Homebrew via `brew bundle --file=Brewfile`

### 6. Link Dotfiles

- Set up symbolic links with GNU Stow via `stow alfred asdf git homebrew iterm2 nvim vim zsh`

### 7. Set macOS Preferences

- Run macOS preferences script via `./scripts/macos.sh`

## Read Here if Using This Repository

Please feel free to fork this repo, or copy-paste the things you need, to make it your own. **Please be sure to change your `git/.config/git/config` name and email address though!**
