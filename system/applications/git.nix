{ config, lib, pkgs, ... }:
let
  git = config.nirix.config_root.applications.git;
in
{
  config = lib.mkIf git.enable {
    environment.systemPackages = with pkgs; [
      git
    ];
  };
}
