{ pkgs, ... }:
  {
    home.packages = with pkgs; [ qutebrowser ];
    home.file.".config/qutebrowser/qute-theme.py".source = ./qute-theme.py;
    home.file.".config/qutebrowser/adblock.py".source = ./adblock.py;
    home.file.".config/qutebrowser/folder/".source = ./folder;

#
#    xdg.configFile."i3blocks/config".source = ./i3blocks.conf;
#  home.file.".gdbinit".text = ''
#      set auto-load safe-path /nix/store
#  '';
    programs.qutebrowser = {
      enable = true;
      loadAutoconfig = true;
      settings = {
      auto_save.session = true;
      #spellcheck.languages = ['en-US'];
      content.blocking.method = "both";
      colors.tabs.even.bg = "#262C36";
      colors.tabs.odd.bg = "#303030";
      colors.tabs.even.fg = "#eeeeee";
      colors.tabs.odd.fg = "#eeeeee";
      colors.tabs.selected.even.bg = "#6b7782";
      colors.tabs.selected.odd.bg = "#6b7782";
      fonts.default_size = "11pt";
      statusbar.show = "never";

      #autoplay = false;
      #pdfjs = true;
      };
      extraConfig = "
c.tabs.padding = {'top': 0, 'bottom': 0, 'left': 5, 'right': 5}
c.editor.command = ['foot', '-e', 'vim', '{file}', '-c', 'normal {line}G{column0}l']
config.source('qute-theme.py') 
config.source('adblock.py') 
      " ;
      keyBindings = {
         normal = {
    "<Ctrl+Left>" = "back";
    "<Ctrl+Right>" = "forward";
    "<Shift+Left>" = "tab-prev";
    "<Shift+Right>" = "tab-next";
    "<Ctrl+r>" = "reload";
    "<Ctrl+Shift+r>" = "reload -f";
    "<Ctrl+Shift+o>" = "adblock-update";
    "<Ctrl+a>" = "hint links spawn mpv /dev/null {hint-url}";
    ",l" = ''config-cycle spellcheck.languages ["en-GB"] ["en-US"]'';
    ",ky" = "open -t https://keybr.com";
    ",mt" = "open -t https://monkeytype.com";
    ",yt" = "open -t https://youtube.com";
    ",gm" = "open -t https://mail.google.com/mail/u/0/#inbox";
    ",ce" = "config-edit";
    "ee" = "spawn --userscript qute-pass";
    "eu" = "spawn --userscript qute-pass --username-only";
    "ep" = "spawn --userscript qute-pass --password-only";
     };
        prompt = {
    "<ctrl-y>" = "prompt-yes";
  };
      }; 
    };

  }
