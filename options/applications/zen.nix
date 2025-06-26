{ config, lib, ... }:
{
  options.nirix.system.applications.zen = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the Zen application";
    };
  };
}
