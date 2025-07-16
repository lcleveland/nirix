{ config, lib, pkgs, ... }:
let
  waypaper = config.nirix.system.desktop_environment.waypaper;
in
{
  config = lib.mkIf (waypaper.enable) {
    environment.systemPackages =  [
      pkgs.waypaper
    ];
  };
}
