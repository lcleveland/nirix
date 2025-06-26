{ config, lib, ... }:
{
  options.nirix.system.applications.git = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable git";
    };
  };
}
