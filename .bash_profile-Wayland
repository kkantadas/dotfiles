# .bash_profile


[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ "$(tty)" = "/dev/tty1" ] ; then

#Wayland Environment variables
   export QT_QPA_PLATFORM=wayland
   export IBSEAT_BACKEND=logind
   export MOZ_ENABLE_WAYLAND=1 
   export GDK_BACKEND=wayland
   export EXA_COLORS="da=1;34"
   export LS_COLORS="*.xyz=37;41:*.ts=34" 
   export MOZ_WEBRENDER=1 
 #export XKB_DEFAULT_OPTIONS=caps:escape # in sway
 #export QT_SCALE_FACTOR=1
 #export QT_QPA_PLATFORM=wayland
 #export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
 #export XDG_SESSION_TYPE=wayland
 #export XDG_RUNTIME_DIR=/tmp/xdg-runtime-$(id -u)
 #mkdir -p $XDG_RUNTIME_DIR
  export EDITOR=nvim

 #Start wayland compositor..

  while true; do
    slstatus -s|dwl >/dev/null 2>&1
  done

#exec Hyprland >/dev/null 2>&1
#exec river >/dev/null 2>&1
#exec dbus-run-session sway


 else

   if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty2 ]]; then
   . startx
   logout
   fi
 fi

