
# Reload the configuration file .zshrc
alias zshreload="source ~/.zshrc"

alias zshconfig="nvim ~/.zshrc"

# ls replacement
alias ls=exa

# Replacing a standard 'rm' command, to remove to the trash.
alias rm='trash'

alias c="clear"
alias f='file'
alias t='touch'

# <git>
alias gld="git log -p"
alias gclone="git clone"
alias gglg='git log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
alias gdiff="git diff --ignore-all-space"
# </git>

# <fmk>
alias fmk-extract="/opt/tools/fmk/extract-firmware.sh"
alias fmk-build="/opt/tools/fmk/build-firmware.sh"
# </fmk>

# <fasd>
# man: https://github.com/clvv/fasd
alias j='fasd_cd -d'     # cd
alias ji='fasd_cd -d -i' # cd with interactive selection
# </fasd>

# <vim>
alias vifm="TERM=xterm-256color vifm"
alias vim="nvim -T xterm-256color"
alias vi=nvim
# </vim>

