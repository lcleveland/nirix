{ config, lib, pkgs, ... }:
let
  dunst_settings = config.nirix.system.desktop_environment.dunst;
in
{
  config = lib.mkIf dunst_settings.enable {
    environment.systemPackages = with pkgs; [
      dunst
    ];
  };
}
