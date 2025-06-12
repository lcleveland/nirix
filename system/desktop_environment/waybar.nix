{ config, home-manager, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.waybar.enable {
    environment.systemPackages = with pkgs; [ line-awesome ];
    home-manager.sharedModules = [
      {
        programs.waybar = {
          enable = desktop_environment.waybar.enable;
        };
      }
    ];
  };
}
