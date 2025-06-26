{ config, lib, pkgs, ... }:
let
  account = ${config.nirix.config_root}.account;
in
{
  config = {
    users.mutableUsers = account.mutable_users;
  };
}
