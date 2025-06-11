{ config, home-manager, lib, pkgs, ... }:
{
  config = {
    programs = {
      niri.enable = true;
    };
    home-manager.sharedModules = [
      {
        programs.niri.settings = {
          prefer-no-csd = true;
        };
      }
    ];
  };
}
