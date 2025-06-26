{ config, lib, ... }:
{
  options.nirix.system.applications.yazi = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable yazi";
    };
  };
}
