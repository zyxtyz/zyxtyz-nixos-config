 { pkgs, config, ... }:

 {
    environment.systemPackages = [ pkgs.kdePackages.sddm ];
 }