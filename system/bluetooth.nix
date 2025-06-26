{ config, lib, pkgs, ... }:
let
  bluetooth = ${config.nirix.config_root}.bluetooth;
in
{
  config = {
    hardware.bluetooth.enable = bluetooth.enable;
  };
}
