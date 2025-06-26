{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.waybar = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Waybar";
    };
  };
}
