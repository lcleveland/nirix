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
        programs.niri.settings = {
          binds = {
            "XF86AudioRaiseVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+" ];
            "XF86AudioLowerVolume".action.spawn = [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-" ];
            "Mod+T".action.spawn = "ghostty";
            "Mod+Shift+Q".action.quit.skip-confirmation = true;
            "Mod+Q".action = lib.niri.actions.close-window;
          };
          input = {
            keyboard.xkb = {
              layout = config.nirix.system.keyboard.layout;
              variant = config.nirix.system.keyboard.variant;
            };
          };
          prefer-no-csd = niri.prefer_no_csd;
        };
      }
    ];
  };
}

