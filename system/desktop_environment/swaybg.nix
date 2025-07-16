{ config, lib, pkgs, ... }:
let
  swaybg = config.nirix.system.desktop_environment.swaybg;
in
{
  config = lib.mkIf (swaybg.enable) {
    environment.systemPackages = with pkgs; [
      swaybg
    ];
  };
}
