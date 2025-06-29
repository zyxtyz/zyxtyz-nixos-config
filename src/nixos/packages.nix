 { pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		tty-clock
		cava
		git
		python3
		minecraft
		pulsemixer
		ani-cli
		mov-cli
		fzf
		ncmpcpp
		mpd
		mpc
		wineWayland
		unrar
		unzip
		gcc
		libsForQt5.full
	];
	nixpkgs.config.permittedInsecurePackages = [
		 "python"
	 ];

}
