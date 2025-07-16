{ config, lib, pkgs, ... }:
{
  options.nirix.system.desktop_environment.swaybg = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable swaybg";
    };
  };
}
