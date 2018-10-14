#!/bin/bash

# Homebrew

which -s brew
if [[ $? != 0 ]]; then
    echo "Installing Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Found Homebrew. Try updating..."
    brew update-reset && brew update
fi

# MariaDB
brew install mariadb

# Sublime Text
brew install sublime-text

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"