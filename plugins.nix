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

    # ui
    lualine-nvim
    #noice-nvim
    #nui-nvim

    # misc
    no-neck-pain-nvim
  ]
