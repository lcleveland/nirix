{ config, lib, ... }:
{
  options.nirix.system.bluetooth = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable bluetooth support";
    };
    power_on_boot = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable bluetooth on boot";
    };
  };
}
