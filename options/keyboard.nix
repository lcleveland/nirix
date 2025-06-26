{ config, lib, ... }:
{
  options.nirix.system.keyboard = {
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
