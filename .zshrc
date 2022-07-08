# Command completion
autoload -Uz compinit
compinit

# Custom prompt
autoload -Uz promptinit && promptinit

prompt_mytheme_setup() {
	PS1="%F{magenta}%n%f@%F{cyan}%m%f | %F{yellow}%~%f -> "
#       PS1="%F{magenta}%n%f@%F{cyan}%m%f | %F{yellow}%1d%f -> "
}

prompt_themes+=( mytheme )
prompt mytheme


# Aliases
alias ls="ls --color"
