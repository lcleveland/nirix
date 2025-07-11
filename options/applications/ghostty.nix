{ config, lib, ... }:
{
  options.nirix.system.applications.ghostty = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the ghostty terminal";
    };
  };
}
