export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
ZSH_DISABLE_COMPFIX=true

plugins=(
    z
    git
    sudo
    tmux
    python
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-completions
)
source $ZSH/oh-my-zsh.sh


# Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Load aliases
if [[ -f ~/.zsh/aliases ]]
then
	. ~/.zsh/aliases
fi

# Load environment variables
if [[ -f ~/.zsh/envars ]]
then
	. ~/.zsh/envars
fi

# Load functions
if [[ -f ~/.zsh/funcs ]]
then
	. ~/.zsh/funcs
fi

autoload -Uz compinit
compinit
