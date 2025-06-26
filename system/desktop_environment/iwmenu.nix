{ config, inputs, lib, pkgs, ... }:
let
  iwmenu = config.nirix.system.desktop_environment.iwmenu;
  nix = config.nirix.system.nix;
in
{
  config = lib.mkIf iwmenu.enable {
    environment.systemPackages = [
      inputs.iwmenu.packages.${nix.host_platform}.default
    ];
  };
}
