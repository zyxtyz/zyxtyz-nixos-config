 { pkgs, ... }:
{
  

	environment.systemPackages = with pkgs; [
	  nodePackages.prettier
	  black
	  stylua
	  rust-analyzer
	  pyright
	];


  programs.nixvim = {
    enable = true;

    plugins = {
      # Enable LSP servers
      lsp = {
        enable = true;
        servers = {
          tsserver.enable = true;
          pyright.enable = true;
          lua_ls.enable = true;      # Note: lua-ls is often 'lua_ls'
          rust_analyzer.enable = true;
          html.enable = true;
          jsonls.enable = true;
        };
      };

      # Enable cmp completion with sources via extraOptions
      cmp = {
        enable = true;
        autoEnableSources = true;
        extraOptions = {
          sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "buffer"; }
            { name = "luasnip"; }
          ];
        };
      };

      luasnip = {
        enable = true;
      };

      lspkind = {
        enable = true;
      };

      # null-ls integration (called none-ls in nixvim)


      # Optional UI helpers
      lspsaga = {
        enable = true;
      };

      noice = {
        enable = true;
      };
    };

    # Autoformat on save
    extraConfigLua = ''
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*",
        callback = function()
          vim.lsp.buf.format({ async = false })
        end
      })
    '';
  };
}

