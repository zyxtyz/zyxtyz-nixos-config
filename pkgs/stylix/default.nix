 { pkgs, settings, config, ... }:

{
	stylix = {
		autoEnable = true;
		enable = true;
		base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-storm.yaml";
	# 	image = ../../wallpapers/anime-chick.jpg;
};
}
