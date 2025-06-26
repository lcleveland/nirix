{ config, lib, pkgs, ... }:
let
  account = config.nirix.system.accounts;
in
{
  config = {
    users.mutableUsers = account.mutable_users;
  };
}
