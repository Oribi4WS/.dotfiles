#!/usr/bin/env zsh

echo "\n <<< Setup Homebrew >>>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --verbose