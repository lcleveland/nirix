{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.regreet = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the Regreet display manager";
    };
  };
}
