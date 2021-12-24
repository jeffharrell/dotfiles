# Dependencies
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Aliases
alias ll='ls -lhA'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias h='history'
alias vi='vim'

# Prompt
PROMPT="%F{green}%n@%m %F{blue}%~ %f%# "

# Directory colors
export CLICOLOR=true
export LSCOLORS=gxGxcxdxbxegedabagacad

# Editors
export EDITOR=vim

