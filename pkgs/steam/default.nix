 { settings, config, pkgs, ... }:

{
	environment.systemPackages = [ pkgs.steam ];
	
	programs.steam.enable = true;
}
