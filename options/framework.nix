{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.framework = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable the Framework laptop support";
    };
  };
}
