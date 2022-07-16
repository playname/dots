autoload -Uz compinit promptinit

compinit
promptinit

prompt_mytheme_setup() {
	PS1="%F{magenta}%n%f@%F{cyan}%m%f | %F{yellow}%~%f -> "
#       PS1="%F{magenta}%n%f@%F{cyan}%m%f | %F{yellow}%1d%f -> "
}

prompt_themes+=( mytheme )
prompt mytheme

# Aliases
alias ls="ls --color"
