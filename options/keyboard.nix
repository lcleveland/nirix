{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.keyboard = {
    layout = lib.mkOption {
      type = lib.types.str;
      default = "us";
      description = "The keyboard layout to use";
    };
    variant = lib.mkOption {
      type = lib.types.str;
      default = "";
      description = "The keyboard variant to use";
    };
  };
}
