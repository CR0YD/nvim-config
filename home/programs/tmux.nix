{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    escapeTime = 10;
    terminal = "screen-256color";
    extraConfig = "
      set-option -a terminal-features 'xterm-256color:RGB'
    ";
    shell = "${pkgs.zsh}/bin/zsh";
  };
}
