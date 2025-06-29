{
  description = "zr3tv's nixos config flake :3";
  

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    home-manager.url = "github:nix-community/home-manager";
    pyprland = {
	url = "github:hyprland-community/pyprland";
	inputs.nixpkgs.follows = "nixpkgs";
	};
    stylix = {
	inputs.nixpkgs.follows = "nixpkgs";
	url = "github:danth/stylix";
  };
    zen-browser = {
	url = "github:youwen5/zen-browser-flake";
	inputs.nixpkgs.follows = "nixpkgs";
  };
    nixvim = {
	url = "github:nix-community/nixvim";
	inputs.nixpkgs.follows = "nixpkgs";
  };
    
    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixcord = {
      url = "github:kaylorben/nixcord";
  };
};
  outputs = { self, nixpkgs, home-manager, stylix, nixvim, pyprland, quickshell, ... }@inputs: 
    let
      system = "x86_64-linux";
      settings = import /home/zyxtyz/.zyxtyz/modules/settings.nix { };
      args = {
        inherit system;
        inherit inputs;
        inherit settings;
      };
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;	
        specialArgs = args;
        modules = [
          /home/zyxtyz/.zyxtyz/src/nixos/configuration.nix
          inputs.home-manager.nixosModules.home-manager
	  inputs.stylix.nixosModules.stylix
	  inputs.nixvim.nixosModules.nixvim
          {
	home-manager = {
	      sharedModules = [
			inputs.nixcord.homeModules.nixcord
		];
              useGlobalPkgs = true;
              useUserPackages = true;
              backupFileExtension = "backup";
              extraSpecialArgs = args;
              users.${settings.userName} = import /home/zyxtyz/.zyxtyz/src/home/home.nix;  
	   };
	}
      ];
    };
};
}
