 { pkgs, settings, config, ... }:

{
	stylix = {
		autoEnable = true;
		enable = true;
		base16Scheme = "${pkgs.base16-schemes}/share/themes/${settings.theme}.yaml";
  		image = null;
	 };
}
