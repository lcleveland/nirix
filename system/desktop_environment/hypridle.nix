{ config, lib, pkgs, ... }:
let
  hypridle = config.nirix.system.desktop_environment.hypridle;
in
{
  config = lib.mkIf hypridle.enable {
    security.pam.services.hypridle = { };
    home-manager.sharedModules = [
      {
        services.hypridle = {
          enable = true;
          settings = {
            listener = [
              {
                timeout = 900;
                on-timeout = "hyprlock";
              }
              {
                timeout = 1800;
                on-timeout = "brightnessctl -s set 1";
                on-resume = "brightnessctl -r";
              }
            ];
          };
        };
      }
    ];
  };
}
