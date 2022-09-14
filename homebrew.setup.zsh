#!/usr/bin/env zsh

echo "\n <<< Setup Homebrew >>>>\n"

if exists brew; then
    echo "Great! Homebrew is already installed!\n"
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


brew bundle --verbose