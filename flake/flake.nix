{
  description = "zr3tv's nixos config flake :3";
  

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
    home-manager.url = "github:nix-community/home-manager";
    fabric.url = "github:Fabric-Development/fabric";
    stylix = {
	inputs.nixpkgs.follows = "nixpkgs";
	url = "github:danth/stylix";
  };
    zen-browser = {
	url = "github:youwen5/zen-browser-flake";
	inputs.nixpkgs.follows = "nixpkgs";
  };
};
  outputs = { self, nixpkgs, home-manager, fabric, stylix, ... }@inputs: 
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
          {
	home-manager = {
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
