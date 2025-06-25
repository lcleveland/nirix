{ config, lib, ... }:
{
  options = {
    nirix = {
      config_root = lib.mkOption {
        type = lib.types.str;
        default = "config.nirix.system";
        description = "The NixOS configuration root";
      };
      option_root = lib.mkOption {
        type = lib.types.str;
        default = "options.nirix.system";
        description = "The NixOS option root";
      };
    };
  };
}
