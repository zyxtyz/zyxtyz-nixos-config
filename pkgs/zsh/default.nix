 { settings, pkgs, config, ... }:

{ 
  environment.systemPackages = [ pkgs.zsh ];
  programs.zsh.enable = true;
}