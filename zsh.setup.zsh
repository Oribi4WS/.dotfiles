#!/usr/bin/env zsh

echo "\n --- Setup ZSH --- \n"

# if [ $(cat /etc/shells | grep "/opt/homebrew/bin/zsh") ]; then
if grep -Fxq '/opt/homebrew/bin/zsh' '/etc/shells'; then
    echo "/opt/homebrew/bin/zsh has already been added to /etc/shells\n"
else
    echo "Enter superuser (sudo) password to edit /etc/shells"
    echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
    echo "\n"
fi

if [ $SHELL = '/opt/homebrew/bin/zsh' ]; then
    echo "Great! The login shell is /opt/homebrew/bin/zsh."
else
    echo "Enter user password to change the login shell"
    chsh -s '/opt/homebrew/bin/zsh'
fi

if sh --version | grep -q zsh; then
    echo '/private/var/select/sh already linked to /bin/zsh'
else
    echo "Enter superuser (sudo) password to symlink sh to zsh"
    # man sh => sh is a POSIX-compliant command interpreter (shell).  It is implemented by re-execing as either bash(1), dash(1), or zsh(1) as determined by the symbolic link located at /private/var/select/sh.
    sudo ln -sfv /bin/zsh /private/var/select/sh
    # I prefer this instead, but not working as /opt/homebrew/bin/zsh is a symlink...
    # sudo ln -sfv /opt/homebrew/bin/zsh /private/var/select/sh
fi