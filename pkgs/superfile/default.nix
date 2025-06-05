 { settings, config, pkgs, ... }:

 {
    environment.systemPackages = [ pkgs.superfile ];
 }