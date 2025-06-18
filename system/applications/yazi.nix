{ config, lib, pkgs, ... }:
{
  config = lib.mkIf (config.nirix.system.applications.yazi.enable) {
    environment.systemPackages = [
      pkgs.yazi
    ];
  };
}
