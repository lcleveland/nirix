{ config, home-manager, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.ly.enable {
    services.display-manager.ly.enable = true;
  };
}
