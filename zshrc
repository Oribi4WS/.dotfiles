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

## n – Interactively Manage Your Node.js Versions
## https://github.com/tj/n
export N_PREFIX="$HOME/.n"
# export PREFIX="$N_PREFIX"

## Set up your shell environment for Pyenv
## https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv
export PYENV_ROOT="$HOME/.pyenv"

# Change ZSH Options

# Create Aliases
alias ls='ls -lAFh'
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias bbd="brew bundle dump --force --describe"
alias trail='<<<${(F)path}'
alias rm='trash'

# Customize Prompt(s)
PROMPT='
%n@%m %1~ %# '

PROMPT='
%1~ L%L %# '

PROMPT='
L%L | %1~ %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
# export PATH="/opt/homebrew/bin:$PATH"
# export PATH="$N_PREFIX/bin:$PATH"
# ## jenv
# export PATH="$HOME/.jenv/bin:$PATH"

# Add Locations to $path Array
typeset -U path
path=(
	"$N_PREFIX/bin"
	"$HOME/.jenv/bin"
	"$PYENV_ROOT/bin"
	"/opt/homebrew/bin"
	$path
)
# initialize jenv shims
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# enable pyenv shims and autocompletion
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# Write Handy Functions
function mkcd() {
	mkdir -p "$@" && cd "$_"
}

# function trail() { <<< ${(F)path} }


# ... and Other Suprises

# END
