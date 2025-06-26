{ config, lib, ... }:
{
  options.nirix.system.network = {
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
