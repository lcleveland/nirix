{ config, lib, pkgs, ... }:
{
  config = lib.mkIf (config.system.nirix.applications.yazi.enable) {
    environment.systemPackages = [
      pkgs.yazi
    ];
  };
}
