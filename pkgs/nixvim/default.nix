 { settings, pkgs, config, ... }:

{
	imports = [ ./neotree.nix ./lsp.nix];
	programs.nixvim = {
		enable = true;
		
		colorschemes.tokyonight = {
			settings.style = "storm";
			enable = true;
		};
		plugins = {
			treesitter = {
				enable = true;
				indent = true;
				nixvimInjections = true;
			};		
			treesitter-context = {enable = false;};

    			treesitter-refactor = {
      				enable = true;
     				highlightDefinitions.enable = true;
    			};

#------....---------------------....--------------------....----------------
			lualine.enable = true;
			surround.enable = true;
			dashboard.enable = true;
			notify.enable = true;
			telescope.enable = true;
			tmux-navigator.enable = true;
			lsp.enable = true;
		};
		extraPlugins = with pkgs.vimPlugins; [
				statix
			 	llama-vim
		 		
		 ];
	};
}

 
