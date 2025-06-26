{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.language = {
    locale = lib.mkOption {
      type = lib.types.str;
      default = "en_US.UTF-8";
      description = "The locale to use";
    };
  };
}
