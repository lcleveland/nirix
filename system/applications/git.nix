{ config, lib, pkgs, ... }:
let
  applications = config.nirix.system.applications;
in
{
  config = lib.mkIf applications.git.enable {
    environment.systemPackages = with pkgs; [
      git
    ];
  };
}
