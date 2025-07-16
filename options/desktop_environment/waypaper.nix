{ config, lib, pkgs, ... }:
{
  options.nirix.system.desktop_environment.waypaper = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable waypaper";
    };
  };
}
