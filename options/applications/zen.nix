{ config, lib, ... }:
{
  ${config.nirix.options_root}.applications.zen = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the Zen application";
    };
  };
}
