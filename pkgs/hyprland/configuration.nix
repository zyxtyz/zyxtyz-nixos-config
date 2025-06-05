{ config, pkgs, lib, settings, ... }:

{
  home-manager.users.${settings.userName} = {
    wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [ "${settings.monitor.name}, ${settings.monitor.resolution}@${settings.monitor.hz}, 0x0, ${settings.monitor.scale}" ];

      exec-once = [
        "swww-daemon"
        "swaync"
	"kitty +kitten panel -o window_padding_width=0.00 -o background_opacity=0.00 --edge=background tty-clock -c"
	"zsh -c 'sleep 5s; hyprctl dispatch exec termusic-server'"
	];

      general = {
        gaps_in = 6;
        gaps_out = 15;
        border_size = 2;
   #    "col.active_border" = "$color2 $color3 45deg";
   #    "col.inactive_border" = "$color8";
      };

      decoration = {
        rounding = 3;
        active_opacity = "1.0";
        inactive_opacity = "1.0";
        fullscreen_opacity = "1.0";
        # screen_shader = "$HOME/.config/hypr/shader.frag";
      };

      misc = {
        disable_hyprland_logo = true;
      };

      
        "$mod" = "SUPER";
        "$browser" = "brave";
        "$term" = "kitty";
        "$menu" = "wofi --show drun";
        "$filemanager" = "kitty zsh -c \"superfile\"";
        "$SCRIPTS" = "/home/zr3tv/.config/home-manager/scripts/";
	"$WIDGETS" = "/home/zr3tv/.config/home-manager/widgets/";
      source = [
      # "$HOME/.config/hypr/rules.conf"
      # "$HOME/.cache/wal/colors-hyprland.conf"
      ];

      bind = [
        " $mod, Return, exec, kitty"
        " $mod, R, exec, $menu"
        " $mod, B, exec, $browser"
        " $mod, K, killactive,"
        " $mod, F, fullscreen,"
        " $mod, D, exec, vesktop"
        " $mod, J, togglesplit"
        " $mod SHIFT, S, exec, hyprshot -z s --clipboard-only -m region"
        " $mod, N, exec, $filemanager"
        " $mod, DELETE, exit,"
        " $mod SHIFT, W, exec, run-widget /home/zr3tv/.config/home-manager/widgets/wallpaperCH/main.py"
        " $mod, TAB, exec, swaync-client -t -sw"
        " $mod, V, togglefloating,"
        " $mod, Left, movefocus, l"
        " $mod, Right, movefocus, r"
        " $mod, Up, movefocus, u"
        " $mod, Down, movefocus, d"
        " $mod, 1, workspace, 1"
        " $mod, 2, workspace, 2"
        " $mod, 3, workspace, 3"
        " $mod, 4, workspace, 4"
        " $mod, 5, workspace, 5"
        " $mod, 6, workspace, 6"
        " $mod, 7, workspace, 7"
        " $mod, 8, workspace, 8"
        " $mod, 9, workspace, 9"
        " $mod, 0, workspace, 10"
        " $mod SHIFT, 1, movetoworkspace, 1"
        " $mod SHIFT, 2, movetoworkspace, 2"
        " $mod SHIFT, 3, movetoworkspace, 3"
        " $mod SHIFT, 4, movetoworkspace, 4"
        " $mod SHIFT, 5, movetoworkspace, 5"
        " $mod SHIFT, 6, movetoworkspace, 6"
        " $mod SHIFT, 7, movetoworkspace, 7"
        " $mod SHIFT, 8, movetoworkspace, 8"
        " $mod SHIFT, 9, movetoworkspace, 9"
        " $mod SHIFT, 0, movetoworkspace, 10"
	" $mod CONTROL, S, exec, kitty sh -c 'termusic'"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };
 };


}
