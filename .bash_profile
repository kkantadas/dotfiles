# ~/.bash_profile
#if [ -f ~/.bashrc ]; then . ~/.bashrc; fi


[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ "$(tty)" = "/dev/tty1" ] ; then
    # Your environment variables
    export QT_QPA_PLATFORM=wayland
    export IBSEAT_BACKEND=logind
    export MOZ_ENABLE_WAYLAND=1 
    export MOZ_WEBRENDER=1 
    #export XKB_DEFAULT_OPTIONS=caps:escape # in sway
    
#export QT_SCALE_FACTOR=1
#export QT_QPA_PLATFORM=wayland
#export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
#export XDG_SESSION_TYPE=wayland
export GDK_BACKEND=wayland
export EXA_COLORS="da=1;34"
export LS_COLORS="*.xyz=37;41:*.ts=34" 

    export EDITOR=nvim
    exec Hyprland >/dev/null 2>&1
   #exec dbus-run-session sway


else

    if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty2 ]]; then
    . startx
    logout
    fi
fi


source /home/kk/.config/broot/launcher/bash/br
