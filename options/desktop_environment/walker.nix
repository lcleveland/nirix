{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.walker = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the Walker launcher";
    };
  };
}
