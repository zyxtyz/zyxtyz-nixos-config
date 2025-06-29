 { ... }:
 rec {
	theme = "rose-pine-moon"; #tokyo-night-storm | catppuccin-mocha | rose-pine-moon | 
	wallpaper = null;

	fileManager = "superfile";
	homeDirectory = "/home/zyxtyz";
	userName = "zyxtyz";
	hostName = "nixos";
	timeZone = "Europe/Bucharest";
	browser = "zen";
	terminal = "kitty";
	monitor = {
		name = "HDMI-A-1";
		resolution = "1920x1080";
		hz = "75.00";
		scale = "1";
	};
	shell = "zsh";
	widgetsDir = "../qs";
	scriptsDir = "/home/zyxtyz/.zyxtyz/pkgs/scripts";
	cursor = "pkgs.comixcursors";
	pkgs = [
		"hyprland"
		"swww"
		"ly"
		"vesktop"
		"${terminal}"
		"${browser}"
		"${fileManager}"
		"kernel"
		"${shell}"
		"starship"
		"pywal"
		"flatpak"
		"stylix"
		"steam"
		"nixvim"
		"pyprland"
		"bootloader"
		"widget"
		"rmpc"
		"mpd"
	 ];	
	
}
	
	
