{ config, pkgs, ... }:

{
 imports = [
     ./apps/qutebrowser.nix
     ./apps/foot.nix
     ./apps/vim.nix
     ./apps/zsh.nix
     ./apps/sway.nix
   ];
  home.username = "kk";
  home.homeDirectory = "/home/kk";

  home.stateVersion = "23.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    broot
    fzf
    htop
    spice-vdagent
    fd
    eza
    ranger
	chromium
    waybar
  ];

  home.file = {

  };

  home.sessionVariables = {
  };

  programs.home-manager.enable = true;
}
