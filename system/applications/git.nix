{ config, lib, pkgs, ... }:
let
  git = config.nirix.system.applications.git;
in
{
  config = lib.mkIf git.enable {
    environment.systemPackages = with pkgs; [
      git
    ];
  };
}
