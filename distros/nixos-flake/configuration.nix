{ config, pkgs, ... }:

{

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

 environment.variables.EDITOR = "vim";

  # Bootloader.

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    initrd.kernelModules = ["kvm-intel"];
    loader = {
      grub = {
        enable = true;
        devices = ["nodev"];
        configurationLimit = 5;
      };
      timeout = 2;
    };
  };

  networking.hostName = "kk"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Kolkata";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TIME = "en_IN";
  };


# services = {
#      xserver = {
#   enable = true;
#   desktopManager.xfce.enable = true;
# };
#};
#
#  # Configure keymap in X11
#  services.xserver = {
#    layout = "us";
#    xkbVariant = "";
#  };
#
fonts.packages = with pkgs; [
           (nerdfonts.override { fonts = [ "CodeNewRoman" ]; })
            noto-fonts
            liberation_ttf
            fira-mono
            meslo-lgs-nf

         ];


#security.polkit.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    # media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.kk = {
    isNormalUser = true;
    description = "kk";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

security.sudo.extraRules= [ # Removing the sudo entries !!
  {  users = [ "kk" ];
    commands = [
       { command = "ALL" ;
         options= [ "NOPASSWD" ];
      }
    ];
  }
];



  # Enable automatic login for the user.
#  services.xserver.displayManager.autoLogin.enable = true;
#  services.xserver.displayManager.autoLogin.user = "kk";

  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
#  systemd.services."getty@tty1".enable = false;
#  systemd.services."autovt@tty1".enable = false;
#
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    meson
    wayland-protocols
    wayland-utils
    wl-clipboard
    wlroots
    hyprland-protocols
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    xwayland
    hyprland
  ];
  
  programs.hyprland.enable = true;



services.dbus.enable = true;
xdg.portal = {
  enable = true;
  wlr.enable = true;
  extraPortals = [
    pkgs.xdg-desktop-portal-gtk
  ];
};

# Hint Electon apps to use wayland
environment.sessionVariables = {
  NIXOS_OZONE_WL = "1";    
};

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
#  # };
#nixpkgs.overlays = [
#  (self: super: {
#    waybar = super.waybar.overrideAttrs (oldAttrs: {
#      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
#    });
#  })
#];


  # List services that you want to enable:

  # Enable the OpenSSH daemon.
   services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

nix = {
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";
  settings.auto-optimise-store = true;
  gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 4d";
  };
};

environment.defaultPackages = [pkgs.perl pkgs.rsync pkgs.strace];


}
