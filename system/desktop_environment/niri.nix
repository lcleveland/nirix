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
          binds = with config.lib.niri.actions; {
            "XF86AudioRaiseVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+";
            "XF86AudioLowerVolume".action = spawn "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-";
          };
          prefer-no-csd = niri.prefer_no_csd;
        };
      }
    ];
  };
}
