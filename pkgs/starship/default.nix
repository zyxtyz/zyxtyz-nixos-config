 { pkgs, settings, config, ... }:

 {
    environment.systemPackages = [ pkgs.starship ];
 }