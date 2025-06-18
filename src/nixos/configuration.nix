
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
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  system.stateVersion = "24.11";
  services.flatpak.enable = true;

  time.timeZone = "${settings.timeZone}";

}

