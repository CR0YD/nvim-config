{ config, pkgs, ... }:

let
  username = "croyd";
in {
  users.users.${username} = {
    isNormalUser = true;
    description = username;
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  nix.settings.trusted-users = [ username ];
}
