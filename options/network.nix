{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  ${options_root}.network = {
    hostname = lib.mkOption {
      type = lib.types.str;
      default = "nirix";
      description = "The hostname to use";
    };
    iwd.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the iwd daemon";
    };
    network_manager.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable the network manager";
    };
  };
}
