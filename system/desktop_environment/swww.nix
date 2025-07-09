{ config, inputs, lib, ... }:
let
  swww = config.nirix.system.desktop_environment.swww;
in
{
  config = {
    environment.systemPackages = lib.mkIf (swww.enable) [
      inputs.swww.packages.${config.nirix.system.nix.host_platform}.swww
    ];
  };
}
