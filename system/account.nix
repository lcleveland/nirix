{ config, lib, pkgs, ... }:
let
  account = config.nirix.system.account;
in
{
  config = {
    users.mutableUsers = account.mutable_users;
  };
}
