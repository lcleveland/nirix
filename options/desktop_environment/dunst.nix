{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.dunst = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable dunst";
    };
  };
}
