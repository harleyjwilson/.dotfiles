#!/bin/bash

echo "Set macOS preferences"

# Update key repeat preference
# https://mac-key-repeat.zaymon.dev/
# Initial delay: 180 ms
# Key repeat interval: 30 ms
echo "Update key repeat preferences"
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 2

# Update Dock hiding and speed
echo "Update Dock preferences"
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock

# Disable user interface sounds
echo "Disable user interface sounds"
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

# Update mouse and trackpad settings
echo "Update mouse and trackpad settings"
defaults write -g com.apple.trackpad.scaling -float 2.5
defaults write -g com.apple.mouse.scaling -float 2.5
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0

# Update keyboard shortcuts
echo "Update keyboard shortcuts"
defaults write -globalDomain NSUserKeyEquivalents -dict-add "Save as PDF\\U2026" "@p"

echo "Restart computer/log out for changes to take place"