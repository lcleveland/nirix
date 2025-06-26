{ config, lib, pkgs, ... }:
let
  bluetooth = config.nirix.system.bluetooth;
in
{
  config = {
    hardware.bluetooth.enable = bluetooth.enable;
  };
}
