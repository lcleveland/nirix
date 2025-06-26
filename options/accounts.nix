{ config, lib, ... }:
let
  options_root = config.nirix.options_root;
in
{
  options_root.accounts = {
    mutable_users = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = ''
        Whether to allow users to create new accounts.
      '';
    };
  };
}
