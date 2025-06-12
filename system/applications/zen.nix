{ config, lib, pkgs, ... }:
let
  applications = config.nirix.system.applications;
in
{
  config = lib.mkIf applications.zen.enable {
    environment.systemPackages = with pkgs; [
      inputs.zen-browser.packages."${config.nirix.system.nix.host_platform}".default
    ];
  };
}
