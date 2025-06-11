{ config, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.walker.enable {
    programs.walker = {
      enable = true;
    };
  };
}
