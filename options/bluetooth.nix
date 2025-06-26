{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.bluetooth = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable bluetooth support";
    };
  };
}
