# Antidote (loads plugins)
source ${ZDOTDIR}/plugins/antidote/antidote.zsh
antidote load

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# Setup zoxide
eval "$(zoxide init zsh --cmd cd)"

# Start tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Run fetch
fastfetch

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
