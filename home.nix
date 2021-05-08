{ config, pkgs, ... }:
{
  # programs.home-manager.enable = true;

  programs.git = {
    enable = true;
  };

  services.picom = {
    enable = true;
  };

  services.polybar = {
    enable = true;
    script = "$HOME/.config/polybar/launch.sh";
  };

  programs.firefox = {
    enable = true;
    profiles = {
      home-manager = {
        settings = {
          "general.smoothScroll" = false;
        };
      };
    };
  };

  home.stateVersion = "21.03";
}
