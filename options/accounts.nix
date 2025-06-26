{ config, lib, ... }:
{
  options.nirix.system.accounts = {
    mutable_users = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = ''
        Whether to allow users to create new accounts.
      '';
    };
  };
}
