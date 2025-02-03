{
  description = "Nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    darwin = {
      url = "github:LnL7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    darwin,
    home-manager,
    ...
  }: let

    hostname = "Felixs-MacBook-Air";
    # hostname = "$(scutil --get LocalHostName)";
    username = "felix";
    useremail = "felix.hajek@icloud.com";

    specialArgs =
      inputs 
      // {
	inherit hostname username useremail;
      };
  in {
    darwinConfigurations."${hostname}" = darwin.lib.darwinSystem {
      inherit specialArgs;
      modules = [
	      ./modules/core.nix
        ./modules/system.nix
        ./modules/packages.nix

        home-manager.darwinModules.home-manager {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              extraSpecialArgs = specialArgs;
              users."${username}" = import ./home;
            };

            users.users."${username}".home = "/Users/${username}";

            # Optionally, use home-manager.extraSpecialArgs to pass
            # arguments to home.nix
        }
      ];
    };
  };
}
