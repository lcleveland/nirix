{ config, lib, ... }:
{
  options.nirix.system.desktop_environment.niri = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Niri";
    };
    prefer_no_csd = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Prefer no CSD";
    };
  };
}
