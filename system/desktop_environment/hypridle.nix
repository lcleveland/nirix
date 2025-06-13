{ config, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.hypridle.enable {
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
                on-timeout = "brightnessctl -s set 10";
                on-remux = "brightnessctl -r";
              }
            ];
          };
        };
      }
    ];
  };
}
