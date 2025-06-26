{ config, lib, ... }:
{
  options.nirix.system.nix = {
    allow_unfree_software = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Whether to allow unfree software to be installed";
    };
    flake.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Whether to enable the Nix flake feature";
    };
    host_platform = lib.mkOption {
      type = lib.types.enum [
        "x86_64-linux"
      ];
      default = "x86_64-linux";
      description = "The host platform";
    };
    state_version = lib.mkOption {
      type = lib.types.str;
      default = "25.05";
      description = "The state version";
    };
    store_optimization.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Whether to enable store optimization";
    };
    garbage_collection = {
      enable = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = "Whether to enable garbage collection";
      };
      automatic = lib.mkOption {
        type = lib.types.bool;
        default = true;
        description = "Whether to enable automatic garbage collection";
      };
      dates = lib.mkOption {
        type = lib.types.str;
        default = "weekly";
        description = "The dates to garbage collect";
      };
      options = lib.mkOption {
        type = lib.types.str;
        default = "--delete-older-than 7d";
        description = "The options to pass to nix-store";
      };
    };
  };
}
