{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.fingerprint = {
    enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable fingerprint support";
    };
  };
}
