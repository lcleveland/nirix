{ config, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.hyprlock.enable {
    programs.hyprlock.enable = true;
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
