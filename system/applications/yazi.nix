{ config, lib, pkgs, ... }:
let
  yazi = config.nirix.config_root.applications.yazi;
in
{
  config = lib.mkIf yazi.enable {
    environment.systemPackages = [
      pkgs.yazi
    ];
  };
}
