#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Cask/brew requirements
brew cask install java
brew install jenv

# General Casks
brew cask install dropbox
brew cask install gitkraken
brew cask install google-chrome
brew cask install intel-power-gadget
brew cask install istat-menus
brew cask install iterm2
brew cask install microsoft-office
brew cask install parallels
brew cask install private-internet-access
brew cask install telegram
brew cask install timing
brew cask install transmission
brew cask install vlc

# Developer Tools - General
brew cask install sequel-pro
brew cask install visual-studio-code

# Developer Tools - JetBrains Professional
brew cask install intellij-idea
brew cask install pycharm
brew cask install webstorm

# Remove outdated versions from the cellar.
brew cleanup
