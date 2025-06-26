{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.time = {
    time_zone = lib.mkOption {
      type = lib.types.str;
      default = "America/Chicago";
      description = "The time zone to use";
    };
  };
}
