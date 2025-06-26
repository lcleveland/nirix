{ config, lib, pkgs, ... }:
let
  hyprlock = config.nirix.system.desktop_environment.hyprlock;
in
{
  config = lib.mkIf hyprlock.enable {
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
