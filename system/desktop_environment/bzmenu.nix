{ config, inputs, lib, pkgs, ... }:
let
  bluetooth = config.nirix.system.bluetooth;
  bzmenu = config.nirix.system.desktop_environment.bzmenu;
  nix = config.nirix.system.nix;
in
{
  config = lib.mkIf (bzmenu.enable && bluetooth.enable) {
    environment.systemPackages = [
      inputs.bzmenu.packages.${nix.host_platform}.default
    ];
  };
}
