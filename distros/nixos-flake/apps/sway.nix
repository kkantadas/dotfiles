{

wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod1";
      # Use kitty as default terminal
      terminal = "foot"; 
      startup = [
        # Launch Firefox on start
        {command = "foot";}
      ];
    };
  };

}
