{ pkgs }:
{
  main = with pkgs; [
    # Inner tools
    ## For telescope.nvim
    ripgrep
  ];
}
