{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.desktop_environment.regreet = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the Regreet display manager";
    };
  };
}
