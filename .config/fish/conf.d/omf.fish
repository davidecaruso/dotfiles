# Path to Oh My Fish
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration
source "$OMF_PATH/init.fish"

# Paths
set -x GOPATH "$HOME/go"
set -x PATH $PATH /usr/local/go/bin $GOPATH/bin

set -x DENO_PATH "$HOME/.deno/bin"
set -x PATH $DENO_PATH:$HOME/.local/bin/:$PATH

# Show default branch name
set -g theme_display_git_default_branch yes

# Remove greetings
set fish_greeting

# Enable kubectl autocompletion
kubectl completion fish | source
