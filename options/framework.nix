{ config, lib, ... }:
{
  options.nirix.system.framework = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable the Framework laptop support";
    };
  };
}
