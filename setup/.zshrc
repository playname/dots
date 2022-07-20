# Load and start add-ons
autoload -Uz compinit promptinit
compinit
promptinit

# Configure command completion
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*' menu select

# Set up custom prompt
prompt_mytheme_setup() {
	PS1="%F{magenta}%n%f@%F{cyan}%m%f | %F{yellow}%~%f -> "
#       PS1="%F{magenta}%n%f@%F{cyan}%m%f | %F{yellow}%1d%f -> "
}

prompt_themes+=( mytheme )
prompt mytheme

# Key bindings
# Set ctrl+left and ctrl+right
[[ -n ";5D"  ]] && bindkey -- ";5D"  backward-word
[[ -n ";5C" ]] && bindkey -- ";5C" forward-word

# Aliases
alias ls="ls --color"
