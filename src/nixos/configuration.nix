
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
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  programs.hyprland.enable = true;
  users.users.zyxtyz = {
	isNormalUser = true;
	home = "/home/zyxtyz";
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

}

