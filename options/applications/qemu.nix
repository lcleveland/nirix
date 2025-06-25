{ config, lib, ... }:
{
  ${config.nirix.options_root}.applications.qemu = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable QEMU";
    };
  };
}
