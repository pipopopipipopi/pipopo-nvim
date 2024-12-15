{
  description = "neovim settings";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = { pkgs, system, ... }:
        let
          plugins = import ./plugins.nix { inherit pkgs; };
          tools = import ./tools.nix { inherit pkgs; };
          nvimConfig = pkgs.callPackage ./config.nix { inherit plugins; };
          neovim-base = pkgs.neovim;
          neovim = extraPackages:
            pkgs.writeShellScriptBin "nvim" ''
              PATH=$PATH:${pkgs.lib.makeBinPath extraPackages}

              LUA_PATH="${nvimConfig}/lua/?.lua;${nvimConfig}/lua/?/init.lua"
              export LUA_PATH

              CONFIG_PATH=${nvimConfig}
              export CONFIG_PATH

              ${neovim-base}/bin/nvim -u ${nvimConfig}/init.lua "$@"
            '';
        in {
          packages = {
            default = neovim tools.main;
          };
        };
    };
}

