{ config, pkgs, lib, settings, ... }:

{
	home = {
		stateVersion = "25.11";


		username = settings.userName;

		homeDirectory = settings.homeDirectory;
};

}
