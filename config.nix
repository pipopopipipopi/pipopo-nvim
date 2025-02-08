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
            bash
            comment
            commonlisp
            fish
            gleam
            json
            latex
            lua
            markdown
            markdown_inline
            nix
            python
            regex
            rust
            toml
            typst
            verilog
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
