{ config, lib, pkgs, ... }:
let
  keyboard = config.nirix.system.keyboard;
in
{
  config = {
    services.xserver.xkb = {
      layout = keyboard.layout;
      variant = keyboard.variant;
    };
  };
}
