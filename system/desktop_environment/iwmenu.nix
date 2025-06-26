{ config, inputs, lib, pkgs, ... }:
let
  iwmenu = ${config.nirix.config_root}.desktop_environment.iwmenu;
  nix = ${config.nirix.config_root}.nix;
in
{
  config = lib.mkIf iwmenu.enable {
    environment.systemPackages = [
      inputs.iwmenu.packages.${nix.host_platform}.default
    ];
  };
}
