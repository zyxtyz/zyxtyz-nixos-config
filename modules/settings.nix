 { ... }:
 rec {
	
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
	widgetsDir = "/home/zyxtyz/.zyxtyz/pkgs/widgets";
	scriptsDir = "/home/zyxtyz/.zyxtyz/pkgs/scripts";
	pkgs = [
		"hyprland"
		"swww"
		"sddm"
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
		"zen-browser"
	];	
	
}
	
	
