 { settings, pkgs, config, ... }:

{
	home-manager.users.${settings.userName} = {
		programs.kitty.enable = true;
		programs.kitty = {
			extraConfig = ''
				background_opacity 0.7
				font_family FiraCode Nerd Font
				font_size 10.0
				enable_ligatures yes
				bell no
				'';
		};
	};
}
