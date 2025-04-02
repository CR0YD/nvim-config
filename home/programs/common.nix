{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # browser
    vivaldi

    # messenger
    discord
    whatsapp-for-linux

    # music
    spotify

    # note taking
    obsidian

    # password management
    keepassxc

    # dev tools
    cmake
    gcc
    gnumake
    hexxy
  ];
}
