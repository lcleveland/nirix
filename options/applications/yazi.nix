{ config, lib, ... }:
{
  ${config.nirix.options_root}.applications.yazi = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable yazi";
    };
  };
}
