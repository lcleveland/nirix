{ config, inputs, lib, pkgs, ... }:
let
  desktop_environment = config.nirix.system.desktop_environment;
  nix = config.nirix.system.nix;
in
{
  config = lib.mkIf desktop_environment.walker.enable {
    environment.systemPackages = [
      (inputs.walker.${nix.host_platform}.default)
    ];
  };
}
