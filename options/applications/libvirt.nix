{ config, lib, ... }:
{
  options.nirix.system.applications.libvirt = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable libvirt";
    };
  };
}
