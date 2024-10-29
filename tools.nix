{ pkgs }:
{
  main = with pkgs; [
    # Inner tools
    ## For telescope.nvim
    ripgrep
    fd

    # C
    ccls

    # LaTeX
    texlab

    # Lua
    lua-language-server

    # Nix
    nil

    # Python
    ruff

    # Rust
    rust-analyzer
  ];
}
