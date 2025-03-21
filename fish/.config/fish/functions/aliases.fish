# Easy aliases
alias neofetch="fastfetch"
alias ls="lsd"
alias audio="ags -t audiomenu"
alias wifi="ags -t networkmenu"

# More complicated ones
function cat --wraps=bat --description 'alias cat=bat'
	bat $argv
end

function ls --wraps=lsd --description 'alias ls=lsd'
	lsd $argv
end
