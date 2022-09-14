echo "... loading environment from ~/.zshrc file ..."

# Set Variables
## Syntax highlighting for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
## Ignore Gatekeeper for casks
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'

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
mkcd() {
	mkdir -p "$@" && cd "$_"
}

# ... and Other Suprises

# END
