echo "... loading environment from ~/.zshenv file ..."

function exists() {
	command -v $1 > /dev/null 2>&1
}