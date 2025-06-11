{ config, lib, pkgs, ... }:
let
  network = config.nirix.system.network;
in
{
  config = {
    networking = {
      hostName = network.hostname;
      networkmanager.enable = network.network_manager.enable;
    };
  };
}
