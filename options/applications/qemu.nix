{ config, lib, ... }:
{
  options.nirix.system.applications.qemu = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable QEMU";
    };
  };
}
