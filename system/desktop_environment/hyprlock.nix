{ config, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.hyprlock.enable {
    security.pam.services.hyprlock = { };
    home-manager.sharedModules = [
      {
        programs.hyprlock = {
          enable = true;
        };
      }
    ];
  };
}
