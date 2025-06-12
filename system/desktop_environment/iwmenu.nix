{ config, inputs, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
in
{
  config = lib.mkIf desktop_environment.iwmenu.enable {
    environment.systemPackages = [
      inputs.iwmenu.packages.${config.nirix.system.nix.host_platform}.default
    ];
  };
}
