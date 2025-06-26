{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.applications.libvirt = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable libvirt";
    };
  };
}
