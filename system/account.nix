{ config, lib, pkgs, ... }:
let
  account = ${config.nirix.config_root}.accounts;
in
{
  config = {
    users.mutableUsers = account.mutable_users;
  };
}
