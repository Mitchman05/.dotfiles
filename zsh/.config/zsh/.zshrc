# Antidote (loads plugins)
source ${ZDOTDIR}/plugins/antidote/antidote.zsh
antidote load

# Configuring autosuggest
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history completion)
autoload -U compinit && compinit

# Set zsh-fast-syntax-highlighting theme
fast-theme -q XDG:catppuccin-mocha

# Include aliases
source ${ZDOTDIR}/aliases

# Setup directory stack
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Set vim mode
bindkey -v
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char
export KEYTIMEOUT=1

# Set vim cursor
source ${ZDOTDIR}/vim_cursor

# Start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Run fetch
exec fastfetch

# Start starship
eval "$(starship init zsh)"
