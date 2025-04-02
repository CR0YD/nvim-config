{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    lua51Packages.lua
    lua51Packages.luarocks
    ripgrep
    wl-clipboard

    # LSP
    # lua-language-server
    # jdt-language-server
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = true;

    plugins = with pkgs.vimPlugins; [
      # base
      # lazy-nvim

      # LSP
      # nvim-lspconfig
    ];
  };
}
