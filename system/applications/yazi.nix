{ config, lib, pkgs, ... }:
let
  yazi = config.nirix.system.applications.yazi;
in
{
  config = lib.mkIf yazi.enable {
    environment.systemPackages = [
      pkgs.yazi
    ];
  };
}
