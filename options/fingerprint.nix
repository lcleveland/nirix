{ config, lib, ... }:
{
  options.nirix.system.fingerprint = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable fingerprint support";
    };
  };
}
