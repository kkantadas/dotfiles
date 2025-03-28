# Dotfiles from X11 and Wayland 

 ### Symlink the dotfiles

 - relative path

 ```
 $ ln -s .dotfiles/"My-configfile" .  

 ```

### or 

### symnlink with ranger 

```
with yy pl for all the dotfiles 

``` 

### Prevent for accitental deletion

```
$ chattr +i filename
```
- And to disable it:
```
$ chattr -i filename
$ rm filename
```

### bash_profile X11

```
 ~/.bash_profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

```

### bash_profile wayland 

```
 ~/.bash_profile

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

# if there is a need for xorg windowsmanager
 else

   if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty2 ]]; then
   . startx
   logout
   fi
 fi
```

### xinitrc config

```
#!/bin/sh

xwallpaper --center /home/kk/bin/wallpapers/cabin-rain.jpg
slstatus &
dwm-redshift.sh &
xmodmap .Xmodmap &
picom &

    while true; do
      dwm  >/dev/null 2>&1 
    done

#suckless END 

sh bin/acpiloop.sh &
sh ~/.fehbg &&  ~/bin/wallpaper.sh &
urxvtd -q -o -f &
redshift &
syndaemon -i 1.0 -d -K &
xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr
xbindings &
sudo powertop --auto-tune
##xrandr -s 1280x1024 
##xrandr --output eDP1 --off # sceen turn screen on -> xrandr --auto 
xinput disable "AT Translated Set 2 keyboard" -> at /boot/loader/entries/arch.conf ->  i8042.nokbd
synclient TapButton1=1 #enable touch-klick
xinput set-prop 10 "libinput Middle Emulation Enabled" 1
sudo alsactl restore # restore alsamixer
sudo systemctl restart bluetooth
xmodmap .Xmodmap
sudo rfkill unblock bluetooth

exec i3wm
exec ratpoison
#exec dbus-launch --exit-with-session emacs -mm --debug-init
```
