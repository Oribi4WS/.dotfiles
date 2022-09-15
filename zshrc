echo "... loading environment from ~/.zshrc file ..."

# Set Variables
## Syntax highlighting for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
## Ignore Gatekeeper for casks
export HOMEBREW_CASK_OPTS="--no-quarantine"
## NULLCMD
## https://zsh.sourceforge.io/Doc/Release/Parameters.html
## The command name to assume if a redirection is specified with no command. Defaults to cat. For sh/ksh behavior, change this to :. For csh-like behavior, unset this parameter; the shell will print an error message if null commands are entered.
export NULLCMD="bat"

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd="brew bundle dump --force --describe"
alias trail='<<<${(F)path}'

# Customize Prompt(s)
PROMPT='
%n@%m %1~ %# '

PROMPT='
%1~ L%L %# '

PROMPT='
L%L | %1~ %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
export PATH=/opt/homebrew/bin:$PATH

# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_"
}

# function trail() { <<< ${(F)path} }


# ... and Other Suprises

# END
