{basix, ...}: {
  vim = {
    extraLuaFiles = [
      ./neovide.lua
    ];
    autocomplete.blink-cmp = {
      enable = true;
      sourcePlugins.ripgrep.enable = true;
    };
    debugger.nvim-dap = {
      enable = true;
      ui.enable = true;
    };
    filetree.neo-tree = {
      enable = true;
      setupOpts = {
        window.position = "right";
      };
    };
    git = {
      enable = true;
      gitsigns = {
        enable = true;
	codeActions.enable = true;
      };
      vim-fugitive.enable = true;
    };
    keymaps = [
      {
        key = "<leader>:";
	mode = ["n" "v"];
	action = ":";
      }
      {
        key = ":";
	mode = ["n" "v"];
	action = "q:";
      }
      {
        key = "<C-q>";
	mode = "t";
	action = "<C-\\><C-n>";
      }
      {
        key = "<leader>tf";
	mode = "n";
	action = "<cmd>Neotree<cr>";
      }
    ];
    languages = {
      astro.enable = true;
      bash.enable = true;
      clang.enable = true; go.enable = true;
      haskell.enable = true;
      lua.enable = true;
      markdown.enable = true;
      nim.enable = true;
      nix.enable = true;
      ocaml.enable = true;
      python.enable = true;
      # rust.enable = true;
      ts.enable = true;
      typst.enable = true;
      zig.enable = true;
      enableDAP = true;
      enableFormat = true;
      enableTreesitter = true;
    };
    lsp = {
      enable = true;
      inlayHints.enable = true;
      lspsaga.enable = true;
      null-ls.enable = true;
    };
    options = {
      mouse = "";
      relativenumber = true;
    };
    theme = {
      enable = true;
      name = "base16";
      base16-colors = basix.schemeData.base16.nord.palette;
    };
    binds.whichKey.enable = true;
    comments.comment-nvim.enable = true;
    formatter.conform-nvim.enable = true;
    fzf-lua.enable = true;
    globals.maplocalleader = " ";
    projects.project-nvim.enable = true;
    snippets.luasnip.enable = true;
    statusline.lualine.enable = true;
    telescope.enable = true;
    treesitter.enable = true;
    ui.noice.enable = true;
  };
}
