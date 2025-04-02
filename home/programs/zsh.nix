{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    defaultKeymap = "emacs";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "nicoulaj";
    };
  };
}
