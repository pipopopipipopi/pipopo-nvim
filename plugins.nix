{ pkgs }:
let
  normalizedPluginAttr = plugin: {
    "${builtins.replaceStrings
      [ "-" "." ]
      [ "_" "_" ]
      (pkgs.lib.toLower plugin.pname)
    }" = plugin;
  };

  plugins = plugin: builtins.foldl' (x: y: x // y) { } (map normalizedPluginAttr plugin);
in
  with pkgs.vimPlugins;
  plugins [
    # plugin manager
    lazy-nvim

    # color scheme
    nightfox-nvim

    # () 
    ultimate-autopair-nvim
    
    # telescope
    telescope-nvim
    plenary-nvim
    telescope-file-browser-nvim

    # treesitter
    nvim-treesitter

    # cmp
    nvim-cmp
    cmp-nvim-lsp
    cmp-buffer
    cmp-cmdline
    cmp-path

    # lsp
    nvim-lspconfig
    
    # ui
    lualine-nvim
    noice-nvim
    nui-nvim

    # misc
    no-neck-pain-nvim
    nvim-scrollbar
    comment-nvim
  ]
