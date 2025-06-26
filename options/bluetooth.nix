{ config, lib, ... }:
{
  options.nirix.system.bluetooth = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable bluetooth support";
    };
  };
}
