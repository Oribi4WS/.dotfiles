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

# Install global NPM packages
npm install --global trash-cli
# npm install --global firebase-tools
# npm install --global @angular/cli
# npm install --global @ionic/cli
# npm install --global typescript
# npm install --global json-server
# npm install --global http-server

echo "--- global NPM packages installed ---"
npm list --global --depth=0

