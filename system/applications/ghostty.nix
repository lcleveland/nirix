{ config, lib, pkgs, ... }:
let
  ghostty = config.nirix.config_root.applications.ghostty;
in
{
  config = lib.mkIf ghostty.enable {
    environment.systemPackages = [ pkgs.ghostty ];
  };
}
