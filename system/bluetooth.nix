{ config, lib, pkgs, ... }:
let
  bluetooth = config.nirix.system.bluetooth;
in
{
  config = lib.mkIf (bluetooth.enable) {
    environment.systemPackages = lib.mkIf (bluetooth.bluez.enable) [ pkgs.bluez ];
    hardware.bluetooth = {
      enable = bluetooth.enable;
      powerOnBoot = bluetooth.power_on_boot;
    };
    services.blueman.enable = bluetooth.blueman.enable;
  };
}
