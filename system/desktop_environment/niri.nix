{ config, home-manager, lib, pkgs, ... }:
let
  niri = config.nirix.system.desktop_environment.niri;
in
{
  config = lib.mkIf niri.enable {
    programs = {
      niri.enable = true;
    };
    home-manager.sharedModules = [
      {
        programs.niri.settings = {
          prefer-no-csd = niri.prefer_no_csd;
        };
      }
    ];
  };
}
