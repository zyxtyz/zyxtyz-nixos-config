 { settings, pkgs, config, ... }:

{ 
  environment.systemPackages = with pkgs; [ 
	
  ];
home-manager.users.${settings.userName} = {
  programs.${settings.shell} = {
		 enable = true;
		 autosuggestion.enable = true;
		 oh-my-zsh.enable = true;
		 enableCompletion = true;
		 syntaxHighlighting.enable = true;
	 	 initExtra = ''

			eval "$(starship init zsh)"
			 '';
		  shellAliases = {
			bai = "shutdown now";
			config = "cd ~/.zyxtyz && nvim ~/.zyxtyz/";
			bios = "sudo systemctl reboot --firmware-setup";

		};

	};
};
  users.users.${settings.userName}.shell = pkgs.${settings.shell};
  programs.${settings.shell}.enable = true;


}
