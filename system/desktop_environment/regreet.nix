{ config, lib, pkgs, ... }:
let
  keyboard = config.nirix.system.keyboard;
  regreet = config.nirix.system.desktop_environment.regreet;
in
{
  config = lib.mkIf regreet.enable {
    programs.regreet = {
      enable = true;
      settings = lib.mkForce ../../resources/regreet/settings.toml;
    };
    environment.variables = {
      XKB_DEFAULT_LAYOUT = keyboard.layout;
      XKB_DEFAULT_VARIANT = keyboard.variant;
    };
  };
}
