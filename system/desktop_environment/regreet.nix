{ config, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.regreet.enable {
    programs.regreet = {
      enable = true;
      settings = lib.mkForce ../../resources/regreet/settings.toml;
    };
  };
}
