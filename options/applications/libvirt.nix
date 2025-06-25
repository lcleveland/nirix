{ config, lib, ... }:
{
  ${config.nirix.options_root}.applications.libvirt = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable libvirt";
    };
  };
}
