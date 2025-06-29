
{ config, lib, pkgs, settings, ... }:
let
	path = pkg: ../../pkgs/${pkg}/default.nix;
in
{
  imports =
    [ 
      ./hardware-configuration.nix
      ./packages.nix
    ] ++ map path settings.pkgs;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
  programs.hyprland.enable = true;
  users.users.${settings.userName} = {
	isNormalUser = true;
	home = "${settings.homeDirectory}";
	extraGroups = [ "wheel" "networkmanager" ];
	
};
  nixpkgs.config = {
	allowUnfree = true;
	allowBroken = true;
};
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.11";
  services.flatpak.enable = true;
  home-manager.users.${settings.userName} = {
		services.mpd-discord-rpc.enable = true;
	};
  time.timeZone = "${settings.timeZone}";

}

