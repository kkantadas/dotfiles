
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export XDG_RUNTIME_DIR=/run/user/$UID

case $- in
    *i*) ;;
      *) return;;
esac

[[ $- != *i* ]] && return

if [ -n "$SSH_CONNECTION" ]; then
    #export PS1="\u@\h: \w \$ "
    export PS1="[\[\e[36m\]\w\[\e[m\]\[\e[35m\]\`parse_git_branch\`\[\e[m\]] "
else
    export PS1="[\[\e[36m\]\w\[\e[m\]\[\e[35m\]\`parse_git_branch\`\[\e[m\]] "
fi

eval "$(fzf --bash)"


export PS2="> "
export PATH=~/bin:$PATH 
export PATH=~/.cargo/bin:$PATH # cargo install --git https://github.com/Morganamilo/paru.git
export TERM=xterm-256color
export LESSOPEN='|/usr/bin/lesspipe.sh %s'
export LESS='-R'
export EDITOR=nvim



HISTSIZE=20000
HISTFILESIZE=40000

# Duplicate commands and start with space are not saved 
HISTCONTROL=ignoreboth

# Append history entries
shopt -s histappend
export PROMPT_COMMAND='history -a'

# update the values of LINES and COLUMNS.
shopt -s checkwinsize


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac
echo -e -n "\x1b[\x33 q" # changes to blinking underline

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

    GRC_ALIASES=true
    [[ -s "/etc/profile.d/grc.sh" ]] && source /etc/grc.sh
    alias dir='dir --color=auto'
    alias feh='feh --image-bg black --scale-down'
    alias ls='ls --color=auto --group-directories-first'
    alias Mount='sudo mount -o gid=users,fmask=113,dmask=002'
    alias MountMac='sudo mount -t hfsplus -o force,rw'
    alias umount='sudo umount'
    alias grep='grep --color=auto'
    alias Vedagrep='cd ~/Vedatxt/ && grep -nr'
    #alias Vedagrep='cd ~/Vedatxt/ && grep --color=auto -nr'
    alias sudo='sudo '
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias reboot='sudo reboot'
    alias poweroff='sudo poweroff'
    alias du-fs='du -h --max-depth=0 $1' #fs=foldersize -requires ONE input
    alias mp='mplayer -vf crop=1010:99'
    alias CachRem='rm -rfv ~/{.cache/{/chromium/Default/,common-lisp/,gstreamer-1.0/,vimb/WebKitCache},.cache/yay/,.local/share/webkitgtk,.pki/}'
    alias shred='shred -fuv'
    alias weather='curl wttr.in/Krishnanagar'
    alias ..git='/usr/bin/git --git-dir=$HOME/.gitBareDot/ --work-tree=$HOME' 
    alias dh='df -h'
    alias pt='pstree -p'
    alias du-ds='du -sh */'
    alias tmux-attach="tmux attach"
    alias vi="nvim"
    alias vim="nvim"
    alias Emacs="emacsclient -cn -a="" $*"
    alias speedtest="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"
    alias ma="macchina -t ytt"
    alias PacRemove="sudo pacman -Sc"
    alias fbreader="FBReader"
    alias Snap-make="snapper -c root create -c timeline --description "
    alias Snap-list="snapper -c root list"
    alias Snap-remove="snapper remove"
    alias cp="cp -r"
    alias dmenu="dmenu-wl"
    alias dmenu_run="dmenu-wl_run"
    alias Tree="tree -L 1"
    alias Fzf="fzf --preview 'bat --style changes --color=always {}'"
    alias sxiv="sxiv.sh"
    alias open="xdg-open"
    alias phone-list="simple-mtpfs -l"
    alias phone-mount="mkdir phone/ & simple-mtpfs --device 1 phone/"
    alias phone-umount="fusermount -u phone && rmdir phone"
    alias phone="jmtpfs --help ; echo '.....jmtpfs ~/Folder....'"
    alias image="sxiv"
    alias gd="cd $HOME/.config/dwl/"
    alias mci="rm -rf config.h && sudo make clean install"
    alias pat='patch -p1 <'
    alias rm='/usr/bin/trash -v'
    alias cp='cp -i'
    alias mv='mv -i'
    alias mkdir='mkdir -p'
    alias ps='ps auxf'
    alias ping='ping -c 10'
    alias less='less -R'
    alias p="ps aux | grep "

# some more ls aliases
    #alias ll='ls -lh'
    #alias lla='ls -lah'
    #alias la='ls -A'
    #alias l='ls -CF'

# some more ls aliases
    alias l='eza -g --group-directories-first'
    alias la='eza -G -a --icons --group-directories-first'
    alias ls='eza -g --icons --group-directories-first'
    alias ll='eza -l -g --icons --group-directories-first'
    alias lla='eza -l -a -g --icons --group-directories-first'
    alias tree='eza --tree --icons'  
    alias snapgui='snapper-gui'
    alias chmod='chmod --preserve-root'
    alias chown='chown --preserve-root'
    alias chgrp='chgrp --preserve-root'
    
# Alias definitions.


# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/ezamples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# fzf
export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"



docview () {
    if [[ -f $1 ]] ; then
        case $1 in
            #*.pdf)       mupdf     "$1" ;;
            *.pdf)       zathura    "$1" ;;
            *.ps)        oowriter "$1" ;;
            *.odt)       oowriter "$1" ;;
            *.txt)       urxvt -e vim  "$1" ;;
            *.doc)       urxvt -e catdoc "$1" | less ;;
            *)           printf "don't know how to extract '%s'..." "$1" >&2; return 1 ;;
        esac
    else
        printf "'%s' is not a valid file!\n" "$1" >&2
        return 1;
    fi
}

fcd () {
  cd "$(find -type d | fzf)"
}
open () {
  xdg-open "$(find -type f |fzf)"
}

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

list () {
    # if file doesn't exist, create it
    if [[ ! -f $HOME/.list ]]; then
        touch "$HOME/.list"
    fi

    if ! (($#)); then
        # no arguments, print file
        cat "$HOME/.list"
    elif [[ "$1" == "-c" ]]; then
        # clear file
        > "$HOME/.list"
    else
        # add all arguments to file
        printf "%s\n" "$*" >> "$HOME/.list"
    fi

}

# Enter directory and list contents
wda () {
    # if file doesn't exist, create it
    if [[ ! -f $HOME/.wda ]]; then
        touch "$HOME/.wda"
    fi

    if ! (($#)); then
        # no arguments, print file
        cat "$HOME/.wda"
    elif [[ "$1" == "-c" ]]; then
        # clear file
        > "$HOME/.wda"
    else
        # add all arguments to file
        printf "%s\n" "$*" >> "$HOME/.wda"
    fi

}


# Back up a file. Usage "backupthis <filename>"
backupthis() {
        cp -riv $1 ${1}-$(date +%Y%m%d%H%M).backup;
}



man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

supertouch() {
    if [ $# -lt 1 ]; then
        echo "Missing argument";
        return 1;
    fi

    for f in "$@"; do
        mkdir -p -- "$(dirname -- "$f")"
        touch -- "$f"
    done
}

Find() { /usr/bin/find / -name "*$1*" 2>/dev/null; }

# aur helper but more basic
aurinstall() {
	local AURL="https://aur.archlinux.org/cgit/aur.git/snapshot/${1}.tar.gz"
	local WDIR="$(mktemp -d)"
	(cd "${WDIR}" && curl -Ofs "${AURL}" && tar -xzf "${1}.tar.gz" || {
		echo 'Package not found' 1>&2
		false
	}) && (cd "${WDIR}/${1}" && makepkg -sic)
	rm -rf "${WDIR}"
}


#https://linuxopsys.com/topics/colors-for-ls-mean-change-colors-for-ls-in-bash
LS_COLORS=$LS_COLORS:"*.pdf=0;33":"*.txt=01;37":"*.mobi=0;35"
# 30	Black   || 00	Default color
# 31	Red     || 01	Bold font
# 32	Green   || 04	Underlined
# 33	Orange  || 05	Flashing text
# 34	Blue    || 07	Reversev
# 35	Purple  || 08	Concealed
# 36	Cyan    || 
# 37	Grey    || 

# for passmenu edit /usr/share/passmenu from dmenu to bemenu !!!
export BEMENU_OPTS="-l 10\
  --fn 15\
  -i\
  -B 1\
  -R 2\
  -c\
  -p ''\
  -W .3\
  -H 30 \
  --counter always\
  --fixed-height 
 --nb  #313436 \
 --bdr #44475a \
 --fb  #313436 \
 --tf  #ffffff \
 --tb  #313436 \
 --hb  #44475a \
 --hf  #ffffff \
 --fbf #313436 \
 --ab  #313436 "


function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
export PS1="[\[\e[36m\]\w\[\e[m\]\[\e[35m\]\`parse_git_branch\`\[\e[m\]] "	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

eval "$(zoxide init --cmd cd bash)"
