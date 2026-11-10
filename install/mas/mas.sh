#!/bin/bash

# mas can't sign in on modern macOS, so sign in to the App Store app first
apps=(
  497799835                                     # Xcode, cocoapods and xcodegen need it
  803453959                                     # Slack
  747648890                                     # Telegram
  310633997                                     # WhatsApp
  1569813296                                    # 1Password for Safari
  1568262835                                    # Super Agent
)

mas install "${apps[@]}"
