{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
      };
      input-field = [
        {
          size = "200, 50";
	  position = "0, -80";
	  monitor = "";
	  dots_center = true;
	  fade_on_empty = false;
	  font_color = "rgb(CFE6F4)";
	  inner_color = "rgb(657DC2)";
          outer_color = "rgb(0D0E15)";
	  outline_thckness = 5;
	  placeholder_text = "Password...";
	  show_passes = 2;
	}
      ];
    };
  };
}
