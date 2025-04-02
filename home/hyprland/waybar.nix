{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    settings = [
      {
        layer = "top";
	position = "top";
	modules-left = [];
	modules-center = [ "hyprland/workspaces" ];
	modules-right = [ "battery" "clock" ];
        
	"battery" = {
          format = "{capacity}%";
	};

	"clock" = {
          format-alt = "{:%a, %d. %b  %H:%M}";
	};
      }
    ];
  };
}
