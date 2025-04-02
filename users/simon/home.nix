{ config, pkgs, ... }:

{
  imports = [
    (import ../../home/core.nix { username = "simon"; })

    ../../home/programs
    ../../home/neovim
  ];

  home.packages = with pkgs; [
    # dev tools
    devenv
    direnv
    jetbrains.phpstorm

    # messenger
    slack
  ];

  programs.zsh.initExtra = "eval \"$(direnv hook zsh)\"";
}
