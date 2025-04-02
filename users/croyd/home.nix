{ config, pkgs, ... }:

{
  imports = [
    (import ../../home/core.nix { username = "croyd"; })

    ../../home/programs
    ../../home/neovim
  ];

  home.packages = with pkgs; [
    evilpixie
    jellyfin-web
    jetbrains.clion
    jetbrains.idea-ultimate
    libreoffice
    prismlauncher
    qbittorrent

    # browser
    qutebrowser

    # messenger
    mattermost-desktop

    # vpn
    openconnect
    openvpn
    tailscale

    # windows emulation
    wineWowPackages.full

    # programming tools
    jdk
  ];

  home.pointerCursor = {
    package = pkgs.adwaita-icon-theme;
    name = "Adwaita";
    size = 38;

    x11.enable = true;
    gtk.enable = true;
  };
}
