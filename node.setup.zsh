#!/usr/bin/env zsh

echo "\n <<< Setup Node >>>>\n"

# Node versions are managed with `n`, which is in the Brewfile.
# zshrc has a N_PREFIX variable and addition to PATH

if exists node; then
    echo "Great! Node $(node --version) & NPM $(npm --version) are already installed!\n"
else
    echo "Installing Node & NPM with n ..."
    n latest
    n lts
fi

