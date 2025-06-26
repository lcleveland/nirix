{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.applications.git = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable git";
    };
  };
}
