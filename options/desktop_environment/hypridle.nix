{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.hypridle = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Hypridle";
    };
  };
}
