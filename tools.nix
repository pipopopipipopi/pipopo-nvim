{ pkgs }:
{
  main = with pkgs; [
    # Inner tools
    ## For telescope.nvim
    ripgrep

    # Lua
    lua-language-server

    # Nix
    nil

    # Python
    pyright

    # Rust
    rust-analyzer
  ];
}
