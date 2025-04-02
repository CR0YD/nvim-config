{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # clipboard
    copyq
    wl-clipboard

    # terminal
    kitty

    hyprpolkitagent
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
    systemd = {
      enable = true;
      enableXdgAutostart = true;
      variables = [ "--all" ];
    };
    xwayland = {
      enable = true;
    };
    settings = {
      exec-once = [
        "dbus-update-activation --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "systemctl --user imoprt-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
        "systemctl --user start hyprpolkitagent"
        "killall -q waybar; sleep .5 && waybar"
      ];

      input = {
        kb_layout = "gb";
        touchpad = {
          natural_scroll = true;
	  disable_while_typing = true;
        };
      };

      gestures = {
        workspace_swipe = 1;
	workspace_swipe_fingers = 3;
      };

      general = {
        "$mod" = "SUPER";
      };

      env = [
        # Optional, hint Electron apps to use Wayland:
        "NIXOS_OZONE_WL, 1"
        "XDG_CURRENT_DESKTOP, Hyprland"
	"XDG_SESSION_TYPE, wayland"
	"XDG_SESSION_DESKTOP, Hyprland"
      ];
    };
  };
}
