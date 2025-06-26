{ config, lib, pkgs, ... }:
let
  regreet = ${config.nirix.config_root}.desktop_environment.regreet;
in
{
  config = lib.mkIf regreet.enable {
    programs.regreet = {
      enable = true;
      settings = lib.mkForce ../../resources/regreet/settings.toml;
    };
  };
}
