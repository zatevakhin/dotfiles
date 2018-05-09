
source ~/.shell/antigen/antigen.zsh

# <zsh-config>

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# </zsh-config>

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle nmap
antigen bundle cp
antigen bundle history
antigen bundle web-search
antigen bundle man
antigen bundle tmux
antigen bundle fasd
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k
# Reload theme
antigen theme bhilburn/powerlevel9k powerlevel9k

# Configure the theme.
source ~/.shell/powerlevel9k.config.zsh

# Tell Antigen that you're done.
antigen apply

# Function
source ~/.shell/functions.zsh

# Aliases
source ~/.shell/aliases.zsh

# Variables
source ~/.shell/env.zsh
