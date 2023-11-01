{
 
programs.foot = {
	enable = true;
	server.enable = true;
	settings = {
 main = { 
  font="CodeNewRoman Nerd Font Propo:size=12";
  title="foot";
  letter-spacing="0.5";
  initial-window-size-pixels="880x500";
  bold-text-in-bright="yes";
	};
 cursor = {
  style="underline";
  blink="yes";
  underline-thickness="0.5";
           };
 mouse = {
  hide-when-typing="yes";
  alternate-scroll-mode="yes";
	};
 colors = {
  foreground="dcdccc";
  background="24283B";
 alpha="0.9";
 ## Normal/regular colors (color palette 0-7)
  regular0="222222";  # black
  regular1="cc0000";  # red
  regular2="4e9a06";  # green
  regular3="c4a000";  # yellow
  regular4="729fcf";  # blue
  regular5="75507b";  # magenta
  regular6="93e0e3";  # cyan
  regular7="dcdccc";  # white
 # Bright colors (color palette 8-15)
  bright0="666666";   # bright black
  bright1="ef2929";   # bright red
  bright2="8ae234";   # bright green
  bright3="fce94f";  # bright yellow
  bright4="32afff";  # bright blue
  bright5="ad7fa8";  # bright magenta
  bright6="34e2e2";   # bright cyan
  bright7="ffffff";   # bright white
};

 key-bindings = {
  scrollback-up-page="Shift+Page_Up";
  scrollback-up-half-page="none";
  scrollback-up-line="none";
  scrollback-down-page="Shift+Page_Down";
  scrollback-down-half-page="none";
  scrollback-down-line="none";
  primary-paste="Shift+Insert";
#  earch-start="Control+Shift+r";
  font-increase="Control+plus Control+equal Control+KP_Add";
  font-decrease="Control+minus Control+KP_Subtract";
  font-reset="Control+0 Control+KP_0";
 # pawn-terminal="Control+Shift+n";
  show-urls-launch="none";
  show-urls-copy="none";
  noop="none";
	};

 search-bindings = {
  cancel="Control+g Control+c Escape";
  commit="Return";
  find-prev="Control+r";
  find-next="Control+s";
  cursor-left="Left Control+b";
  cursor-left-word="Control+Left Mod1+b";
  cursor-right="Right Control+f";
  cursor-right-word="Control+Right Mod1+f";
  cursor-home="Home Control+a";
  cursor-end="End Control+e";
  delete-prev="BackSpace";
  delete-prev-word="Mod1+BackSpace Control+BackSpace";
  delete-next="Delete";
  delete-next-word="Mod1+d Control+Delete";
  extend-to-word-boundary="Control+w";
  extend-to-next-whitespace="Control+Shift+w";
  clipboard-paste="Control+v Control+y";
  primary-paste="Shift+Insert";
	};
 url-bindings = {
  cancel="Control+g Control+c Control+d Escape";
	};
      };
    };
  }
