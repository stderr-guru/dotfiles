zmodload zsh/complist
setopt no_complete_aliases
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# AWS CLI
if type aws &>/dev/null && [ -s "${HOMEBREW_PREFIX:=/opt/homebrew}/bin/aws_completer" ]; then
  complete -C "$HOMEBREW_PREFIX/bin/aws_completer" aws
fi

# Google Cloud CLI
if [ -s "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.zsh.inc" ]; then
  source "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.zsh.inc"
  source "$HOMEBREW_PREFIX/share/google-cloud-sdk/completion.zsh.inc"
fi

# Azure CLI
if [ -s "$HOMEBREW_PREFIX/etc/bash_completion.d/az" ]; then
  source "$HOMEBREW_PREFIX/etc/bash_completion.d/az"
fi

# nvm
export NVM_DIR="$HOME/.nvm"
if [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ]; then
  \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"  # This loads nvm
fi

if [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ]; then
  \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi

# OnePassword
if type op &>/dev/null; then
  eval "$(op completion zsh)"
fi
