 { pkgs, inputs, settings, config, home, ... }:

{
	environment.systemPackages = [
 	   inputs.zen-browser.packages.${pkgs.system}.default
        ];	
}
