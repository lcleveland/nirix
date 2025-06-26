{ config, lib, pkgs, ... }:
let
  ghostty = config.nirix.system.applications.ghostty;
in
{
  config = lib.mkIf ghostty.enable {
    environment.systemPackages = [ pkgs.ghostty ];
  };
}
