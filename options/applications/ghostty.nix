{ config, lib, ... }:
{
  ${config.nirix.options_root}.applications.ghostty = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the ghostty terminal";
    };
  };
}
