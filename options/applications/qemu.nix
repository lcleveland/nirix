{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.applications.qemu = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable QEMU";
    };
  };
}
