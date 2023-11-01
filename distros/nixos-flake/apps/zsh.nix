{
 programs.zsh = {
      enable = true;
      enableAutosuggestions = true;
      syntaxHighlighting.enable = true;
      autocd = true;
 
      initExtra = ''
      [[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
 
      export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
      export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'
      export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
      export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"
      export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
      export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
      export PATH=~/bin:~/.local/bin:$PATH
      export CLICOLOR=1
      export LSCOLORS=GxFxCxDxBxegedabagaced
      export Environment=XDG_SESSION_TYPE=wayland
 
      '';
 
 
      envExtra = "
     QT_WAYLAND_DISABLE_WINDOWDECORATION=1
     LIBSEAT_BACKEND=logind"
      ;
 
     history = {
       ignoreDups = true;
       save = 100000;
       size = 100000;
     };
 
 
     shellAliases = {
       dir="dir --color=auto";
       Mount="sudo mount -o gid=users,fmask=113,dmask=002";
       MountMac="sudo mount -t hfsplus -o force,rw";
       umount="sudo umount";
       grep="grep --color=auto";
       Vedagrep="cd ~/Vedatxt/ && grep -nr";
       sudo="sudo ";
       fgrep="fgrep --color=auto";
       egrep="egrep --color=auto";
       reboot="sudo reboot";
       poweroff="sudo poweroff";
       du-fs="du -h --max-depth=0 $1"; #fs=foldersize -requires ONE input;
       shred="shred -fuv";
       vim="nvim";
      l="exa -g --icons --group-directories-first";
      la="exa -G -a --icons --group-directories-first";
      ls="exa -g --group-directories-first";
      ll="exa -l -g --icons --group-directories-first";
      lla="exa -l -a -g --icons --group-directories-first";
      tree="exa --tree --icons";
      ip = "ip --color=auto";
      #fzf = "fzf --preview-window";
     };
 
  oh-my-zsh = {
        enable = true;
        plugins = [ "z" "cp" ];
        theme = "robbyrussell";
      };
    #  zplug ={
    #  enable = true;
    #  plugins = [
    #    { name = "unixorn/fzf-zsh-plugin"; } # Simple plugin installation
    #  ];
    #  };
 
   };
   programs.fzf = {
      enable = true;
      enableZshIntegration = true;
    };
 
 }
