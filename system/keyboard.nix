{ config, lib, pkgs, ... }:
let
  keyboard = config.nirix.config_root.keyboard;
in
{
  config = {
    services.xserver.xkb = {
      layout = keyboard.layout;
      variant = keyboard.variant;
    };
  };
}
