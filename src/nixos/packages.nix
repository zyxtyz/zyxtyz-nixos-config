 { pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		tty-clock
		cava
		git
		pypy3
		minecraft
		pulsemixer
		ani-cli
		mov-cli
		fzf
	];

}
