 { pkgs, settings, config, lib, ... }:

 {
 environment.systemPackages = [ pkgs.starship ];
 home-manager.users.${settings.userName} = { 
	programs.starship = {
		enable = true;
		enableZshIntegration = true;
			
 	};
 };

 }
