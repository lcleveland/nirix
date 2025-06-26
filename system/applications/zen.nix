{ config, inputs, lib, pkgs, ... }:
let
  zen = config.nirix.system.applications.zen;
in
{
  config = lib.mkIf zen.enable {
    environment.systemPackages = with pkgs; [
      inputs.zen_browser.packages."${config.nirix.system.nix.host_platform}".default
    ];
  };
}
