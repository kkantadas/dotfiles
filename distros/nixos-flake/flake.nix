 {
  description = "A flake setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
   home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
         kk = lib.nixosSystem {
          inherit system pkgs;
          modules = [
    ./configuration.nix
     home-manager.nixosModules.home-manager {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.kk = {
                imports = [ ./home.nix ];
              };
            }
      ];
        };
      };
    hmConfig = {
    kk = home-manager.lib.homeManagerConfiguration {
          inherit system pkgs;
      username= "kk";
      homeDirectory = "/home/kk";
      configuration = {
         imports = [
        ./home.nix
        ];
       };
         };
       };
     }; 
  }
