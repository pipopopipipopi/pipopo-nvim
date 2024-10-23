{
  plugins,
  lib,
  stdenv,
  vimPlugins,
}:
let
  envVars = plugins // {
    treesitter_parsers =
      lib.pipe
        (vimPlugins.nvim-treesitter.withPlugins (
          p: with p; [
            c
            comment
            commonlisp
            fish
            json
            jsonc
            latex
            lua
            markdown
            markdown_inline
            nix
            python
            rust
            toml
            vim
          ]
        )).dependencies
        [
          (builtins.map builtins.toString)
          (builtins.concatStringsSep ",")
        ];
  };
in
  stdenv.mkDerivation (
    envVars // {
      pname = "pipopo-nvim";
      version = "latest";
      src = ./nvim;

      installPhase = ''
        mkdir -p $out
        for file in $(find . -type f); do
          substituteAllInPlace "$file"
        done
        cp -r ./ $out
      '';
    }
  )
