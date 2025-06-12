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
        };
      }
    ];
  };
}
