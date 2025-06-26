{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.desktop_environment.niri = {
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
