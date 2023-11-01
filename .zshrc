HISTFILE=~/.zsh_histfile
HISTSIZE=100000
SAVEHIST=100000

export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
export YSU_MESSAGE_POSITION="after"
setopt HIST_IGNORE_SPACE
export PATH=~/bin:~/.local/bin:$PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

unsetopt beep
unsetopt nomatch
path+=('~/bin')
export PATH
#export Environment=XDG_SESSION_TYPE=wayland

# Promt :>
autoload -Uz compinit promptinit
compinit
promptinit

# Define the theme
prompt_mytheme_setup() {
  PS1="%~%  $ "
  ## for root ## PS1="%F{red}%n@%m:%d %F{green}# %F{reset}"
}

# Add the theme to promptsys
prompt_themes+=( mytheme )

# Load the theme
prompt mytheme


zstyle ':completion:*' rehash true

# The following lines were added by compinstall
zstyle :compinstall filename '/home/kanta/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
#Plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh
ZSH_AUTOSUGGEST_HISTORY_IGNORE=*
#Keybinding
bindkey \^u backward-kill-line
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey \^u backward-kill-line
bindkey -e

    alias dmenu='dmenu_run -fn monospace-7-'
    alias dir='dir --color=auto'
    alias Mount='sudo mount -o gid=users,fmask=113,dmask=002'
    alias MountMac='sudo mount -t hfsplus -o force,rw'
    alias umount='sudo umount'
    alias grep='grep --color=auto'
    alias Vedagrep='cd ~/Vedatxt/ && grep -nr'
    alias sudo='sudo '
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias reboot='sudo reboot'
    alias poweroff='sudo poweroff'
    alias du-fs='du -h --max-depth=0 $1' #fs=foldersize -requires ONE input
    alias mp='mplayer -vf crop=1010:99'
    alias CachRem='rm -rfv ~/{.cache/{/chromium/Default/,common-lisp/,gstreamer-1.0/,vimb/WebKitCache},.cache/yay/,.local/share/webkitgtk,.pki/}'
    alias shred='shred -fuv'
    alias nm-connection-editor='ratpoison -c "frestore `tail -n 1 .config/ratframe/ratframe2`" ; exec nm-connection-editor'
    alias weather='curl wttr.in/Kolkata'
    alias ..git='/usr/bin/git --git-dir=$HOME/.gitBareDot/ --work-tree=$HOME' 
    alias pi='ping google.com'
    alias dh='df -h'
    alias pt='pstree -p'
    alias du-ds='du -sh */'
    alias tmux-attach="tmux attach"
    alias phone="jmtpfs --help ; echo '.....jmtpfs ~/Folder....'"
    alias Emacs="emacsclient -cn -a="" $*"
    alias PacRemove="sudo pacman -Sc"
    alias fbreader="FBReader"
    alias v="nvim"
    alias vi="nvim"
    alias l='exa -G --no-icons  --group-directories-first'
    alias la='exa -G -a --icons --group-directories-first'
    alias ls='exa -G --icons --group-directories-first'
    alias ll='exa -l -g --icons --group-directories-first'
    alias lla='exa -l -a -g --icons --group-directories-first'
    alias tree='exa --tree --icons'  
    alias jo='jobs'
    alias bat='bat -p'
    alias wifilist='nmcli device wifi list'
    alias fix-internet='sudo modprobe -r r8169 && sleep 10 && sudo modprobe r8169'
    alias bgclear='sudo kill -9 $(pidof sleep, swaybg, sh)'
 
 #Functions 
note () {
    # if file doesn't exist, create it
    if [[ ! -f $HOME/.notes ]]; then
        touch "$HOME/.notes"
    fi

    if ! (($#)); then
        # no arguments, print file
        cat "$HOME/.notes"
    elif [[ "$1" == "-c" ]]; then
        # clear file
        > "$HOME/.notes"
    else
        # add all arguments to file
        printf "%s\n" "$*" >> "$HOME/.notes"
    fi
}

 # if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
 #   exec tmux
 # fi
 # 

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"

# Vim keys
##   bindkey -v
