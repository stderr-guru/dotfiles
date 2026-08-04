# exa aliases
eza_modifiers="--git --icons --group-directories-first"
command -v eza &>/dev/null && alias l="eza $eza_modifiers -lh"
command -v eza &>/dev/null && alias ls="eza $eza_modifiers -lh"
command -v eza &>/dev/null && alias ll="eza $eza_modifiers -lahbm"
command -v eza &>/dev/null && alias lt="eza $eza_modifiers --tree -L 2"
command -v eza &>/dev/null && alias llt="eza $eza_modifiers --tree -a -L 2"

command -v z &>/dev/null && alias cd="z"
# TODO: Think if I really want this alias grep="rg"
command -v procs &> /dev/null && alias ps="procs"
command -v btm &>/dev/null && alias top="btm"
command -v bat &>/dev/null && alias cat="bat --plain"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
command -v bat &>/dev/null && alias bathelp='bat --plain --language=help'
# TODO: Check if macos in chezmoi
alias finder='open'

command -v nvim &>/dev/null && alias vim="nvim"
command -v nvim &>/dev/null && alias vi="nvim"

# Docker
alias up="docker compose up -d"
alias down="docker compose down"
alias restart="docker compose down && docker compose up -d"


