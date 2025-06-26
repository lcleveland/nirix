{ config, lib, pkgs, ... }:
let
  network = ${config.nirix.config_root}.network;
in
{
  config = {
    networking = {
      hostName = network.hostname;
      networkmanager = {
        enable = network.network_manager.enable;
        wifi = lib.mkIf network.iwd.enable {
          backend = "iwd";
        };
      };
      wireless.iwd = {
        enable = network.iwd.enable;
        settings = lib.mkIf network.iwd.enable {
          Settings.AutoConnect = true;
        };
      };
    };
  };
}
