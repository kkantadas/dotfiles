# Autostart 

if [ "$(tty)" = "/dev/tty1" ] ; then
    # Your environment variables
    export QT_QPA_PLATFORM=wayland
    export MOZ_ENABLE_WAYLAND=1
    export MOZ_WEBRENDER=1
    LIBSEAT_BACKEND=logind
    export XKB_DEFAULT_OPTIONS=caps:escape
    export EDITOR=nvim
    exec sway

fi
