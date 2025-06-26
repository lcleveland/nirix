{ config, lib, ... }:
{
  options.nirix.system.cpu = {
    microcode.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable microcode support";
    };
    vendor = lib.mkOption {
      type = lib.types.enum [
        "amd"
        "intel"
      ];
      default = "amd";
      description = "The CPU vendor to use";
    };
  };
}
