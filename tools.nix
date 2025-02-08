{ pkgs }: {
  main = with pkgs; [
    # Inner tools
    ## For telescope.nvim
    ripgrep
    fd

    # Gleam
    gleam

    # LaTeX
    texlab

    # Lua
    lua-language-server

    # Nix
    nil

    # Python
    pyright

    # Rust
    rust-analyzer

    # Typst
    tinymist
  ];
}
