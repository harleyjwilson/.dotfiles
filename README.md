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

- Set up symbolic links with GNU Stow via `stow alfred asdf git ghostty hazel homebrew iterm2 jrnl llm nvim tmux vim zed zsh`

### 7. Setup Hazel Rules

1. Open Hazel.
2. Select the "Add Folder" menu bar option to add the relevant folder.
3. Right-click on the folder in the sidebar and select "Rule Sync Settings..."
4. Select "Use existing sync file..."
5. Select the relevant sync file in the `~/.config/hazel` directory.
6. Repeat for each folder.

### 8. Set macOS Preferences

- Run macOS preferences script via `./scripts/macos.sh`
- As you are unable to set up the keyboard shortcuts for Apple Mail in the same way as other programs follow these steps:
  - Open System Settings
  - Go to Keyboard > Keyboard Shortcuts > App Shortcuts
  - Add new shortcut and select Mail.app as Application, set "Export as PDF…" as Menu title, and set ⌘⌥P as the Keyboard shortcut.

## Read Here if Using This Repository

Please feel free to fork this repo, or copy-paste the things you need, to make it your own. **Please be sure to change your `git/.config/git/config` name and email address though!**
