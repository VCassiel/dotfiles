#   ███████╗███████╗██╗  ██╗
#   ╚══███╔╝██╔════╝██║  ██║
#     ███╔╝ ███████╗███████║
#    ███╔╝  ╚════██║██╔══██║
#   ███████╗███████║██║  ██║
#   ╚══════╝╚══════╝╚═╝  ╚═╝
#   Shared Configuration

#------------------
#   ZSH PLUGINS
#------------------

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

#------------------
#  ALIASES
#------------------

# •• System Management

alias s='sudo'
alias v='nvim'
alias b='bat'
alias c='cat'
alias t='touch'
alias ls='exa -a --color=always --icons --group-directories-first'
alias lx='exa -lah --color=always --icons --group-directories-first'
alias rem='rm -rfI'
alias grep='grep --color=auto'		
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ip='ip --color=auto'
alias jctl='journalctl -p 3 -xb'
alias snapshot='sudo timeshift --create --comments "On-Demand Snapshot"'
alias clip='xclip -selection clipboard'

# •• Configurations

alias bsprc='nvim $HOME/.config/bspwm/bspwmrc'
alias hkrc='nvim $HOME/.config/sxhkd/sxhkdrc'
alias barrc='nvim $HOME/.config/polybar/config.ini'
alias shrc='nvim $HOME/.zshrc'
alias kitrc='nvim $HOME/.config/kitty/kitty.conf'
alias vimrc='nvim $HOME/.config/nvim/init.vim'
alias comprc='nvim $HOME/.config/picom/picom.conf'
alias dunrc='nvim $HOME/.config/dunst/dunstrc'
alias rofrc='nvim $HOME/.config/rofi/config.rasi'

# •• Apps

alias clock='tty-clock -bc -SDC 7'
alias ipinfo="curl -s ip-api.com/$1"
alias ovpn="sudo openvpn"

# •• Package Management

alias mirs='sudo reflector --verbose --latest 200 --age 24 --score 75 --sort rate --fastest 6 --save /etc/pacman.d/mirrorlist'
alias stdgrade='sudo pacman -Syyu'
alias aurgrade='paru -Sua' 
alias pacss='pacman -Ss'
alias pacsi='sudo pacman -S'
alias pacqs='sudo pacman -Qe'
alias pacqa='sudo pacman -Qm'
alias pacclr='sudo pacman -Scc'
alias pacrs='sudo pacman -Rns'
# alias pacsi='sudo aura -A'
# alias pacss='aura -Ss'
# alias pacrs='sudo aura -Rsnu'

# •• Git

alias status='git status'
alias stage='git add *'
alias purge='git rm $(git ls-files --deleted)'
alias pull='git pull'
alias push='git push -u'
alias commit='git commit -m'
alias checkout='git checkout'
alias tokenize='cat ~/Documents/token | xclip -selection clipboard'

#------------------
#   VARIABLES
#------------------

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=firefox
export PATH=$PATH:$HOME/.local/bin
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export SUDO_PROMPT=$(echo -e "\033[31mProvide your password: \033[0m")
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="~/.cache/zsh/history"

#------------------
#   FEATURES
#------------------

# •• Autocomplete With Case Insenstivity

autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# •• Auto CD

zstyle :compinstall filename "$HOME/.zshrc"
setopt autocd extendedglob nomatch
autoload -Uz compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include Dotfiles

# Updirs
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# •• VI Mode

bindkey -v
export KEYTIMEOUT=1

# Edit Command Line in Vim Buffer
autoload edit-command-line; zle -N edit-command-line
bindkey '^v' edit-command-line

# Use Vim Keys in Tab Complete Menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char

# Fix Backspace Bug When Switching Modes
bindkey "^?" backward-delete-char

# Change Cursor Shape For Different VI Modes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' 
preexec() { echo -ne '\e[5 q' ;} 

#------------------
#   PROMPT
#------------------

autoload -U promptinit; promptinit
prompt spaceship

SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_CHAR_SYMBOL='|> '
SPACESHIP_CHAR_COLOR_SUCCESS=white
SPACESHIP_CHAR_COLOR_FAILURE=red
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_COLOR=white
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_USER_SHOW=true
SPACESHIP_HOST_SHOW=true
SPACESHIP_USER_PREFIX='as '
SPACESHIP_HOST_PREFIX=' at '
SPACESHIP_DIR_COLOR=yellow
SPACESHIP_DIR_PREFIX='[ '
SPACESHIP_DIR_SUFFIX=' ] '
SPACESHIP_DIR_TRUNC_PREFIX='.../'
SPACESHIP_DIR_LOCK_SYMBOL=' #'
