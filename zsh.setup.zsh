#!/usr/bin/env zsh

echo "\n <<< Setup ZSH >>>>\n"

# if exists brew; then
#     echo "Great! Homebrew is already installed!\n"
# else
#     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# fi

echo "Enter superuser (sudo) password to edit /etc/shells"
echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells'

echo "Enter user password to change the login shell"
chsh -s '/opt/homebrew/bin/zsh'
