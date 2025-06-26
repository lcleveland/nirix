{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.hyprlock = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Hyprlock";
    };
  };
}
