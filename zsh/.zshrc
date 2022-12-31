export PATH=$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$HOME/bin:$HOME/bin/bin:$HOME/.local/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/node_modules/.bin/

# Path to your oh-my-zsh installation.
export ZSH="/home/kennan/.oh-my-zsh"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="half-life"

# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
(cat ~/.cache/wal/sequences &)


source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor
export EDITOR='vim'

# ZSH Aliases
alias ls="exa -lah --git --group-directories-first"
alias pn="pnpm"
alias grep="rg"
alias cbs="update_wallpaper.sh"
alias c="clear"
alias lsr="ls -T"
alias cbonsai="cbonsai -li"
alias sex="wal --theme sexy-sexcolors"
alias monokai="wal --theme monokai"
alias random="wal --theme random"
alias ncm="ncmpcpp"
alias musicdl="youtube-dl -xi -o '%(title)s.%(ext)s' --add-metadata"
alias du="dust"
alias rls="echo \"You probably didn't mean to do that, if so use (backslash)rls\" "
alias sl="sl | lolcat"
alias weebfetch="neofetch --kitty --source ~/Pictures/anime/square"
alias dc="docker compose"
alias bright="brightnessctl set"
alias r="source ~/.zshrc"

# pnpm
export PNPM_HOME="/home/kennan/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
