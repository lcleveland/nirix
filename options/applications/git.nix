{ config, lib, ... }:
{
  ${config.nirix.options_root}.applications.git = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable git";
    };
  };
}
