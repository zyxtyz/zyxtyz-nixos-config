{ inputs, pkgs, settings, ... }:

{
  environment.systemPackages = with pkgs; [ pyprland ];

  home-manager.users.${settings.userName} = {
    xdg.configFile."hypr/pyprland.toml".text = ''
      [pyprland]
      plugins = [
        "scratchpads",
      ]

      [scratchpads.audio]
      animation = "fromBottom"
      command = "kitty pulsemixer"
      class = "kitty"
      size = "40% 20%"
      position = "30% 35%"

      [scratchpads.music]
      animation = "fromTop"
      command = "kitty termusic"
      class = "kitty"
      size = "50% 50%"
      position = "30% 35%"
    '';
  };
}

