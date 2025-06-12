{ config, home-manager, hyprpanel, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.hyprpanel.enable {
    home-manager.sharedModules = [
      ({ config, lib, pkgs, ... }: hyprpanel.homeManagerModules.hyprpanel)
      { }
    ];
  };
}
