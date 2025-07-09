{ config, inputs, lib, ... }:
let
  swww = config.nirix.system.desktop_environment.swww;
in
{
  config = {
    environment.systemPackages = lib.mkIf (swww.enable) [
      inputs.swww.packages.${config.nirix.system.host_platform}.swww
    ];
  };
}
