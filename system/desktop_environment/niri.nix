{ config, inputs, lib, pkgs, ... }:
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
        niri.settings = {
          binds = {
            "XF86AudioRaiseVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+" ];
            "XF86AudioLowerVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-" ];
          };
          input = {
            keyboard.xkb = {
              variant = config.nirix.system.keyboard.variant;
            };
          };
          prefer-no-csd = niri.prefer_no_csd;
        };
      }
    ];
  };
}
