{ inputs, outputs, lib, config, pkgs, ... }:
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
  in {
    programs.neovim = {
      enable = true;
      plugins = with pkgs.vimPlugins; [
        nvim-treesitter
        playground
        harpoon
        refactoring-nvim
        undotree
        vim-fugitive
        nvim-treesitter-context
        zen-mode-nvim
        copilot-vim
        lsp-zero-nvim
        nvim-lspconfig
        mason-nvim
        mason-lspconfig-nvim
        cmp-buffer
        cmp-path
        cmp-nvim-lsp
        cmp-nvim-lua
        luasnip
        friendly-snippets
        cmp_luasnip
        nvim-cmp
        telescope-nvim
        plenary-nvim
        {plugin = trouble-nvim; config = toLua "function() require(\"trouble\").setup {icons = false,} end ";  }
        {plugin = rose-pine; config = toLua ''require('rose-pine').setup {variant = 'main',} vim.cmd 'colorscheme rose-pine' local lualine_theme = require('lualine.themes.rose-pine') '';}
      ];
  };
  home.file."nvim" = {
    enable = true;
    source = ./configs/nvim;
    target = "~/.config/nvim";
  };
}
