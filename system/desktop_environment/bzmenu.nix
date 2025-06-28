{ config, inputs, lib, pkgs, ... }:
let
  bzmenu = config.nirix.system.desktop_environment.bzmenu;
  nix = config.nirix.system.nix;
in
{
  config = lib.mkIf bzmenu.enable {
    environment.systemPackages = [
      inputs.bzmenu.packages.${nix.host_platform}.default
    ];
  };
}
