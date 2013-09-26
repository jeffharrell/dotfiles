# Dependencies
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

source ~/.dotfiles/git-prompt.sh


# Aliases
alias ll='ls -lhA'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias h='history'
alias vi='vim'


# Prompt
function prompt {
	local GREEN="\033[32m\]"
	local BLUE="\033[36m\]"
	local YELLOW="\033[33m\]"
	local DEFAULT="\[\033[0m\]"

	PS1="$GREEN\h $BLUE\w $YELLOW$(__git_ps1 "[%s]") $DEFAULT\n\$ "
}

PROMPT_COMMAND=prompt


# Directory colors
export CLICOLOR=true
export LSCOLORS=gxGxcxdxbxegedabagacad

# Editors
export EDITOR=vim

# Paths
export PATH=$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH


[[ -s /Users/jeff/.nvm/nvm.sh ]] && . /Users/jeff/.nvm/nvm.sh # This loads NVM
