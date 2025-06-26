{ config, inputs, lib, nixpkgs, pkgs, ... }:
let
  niri = config.nirix.system.desktop_environment.niri;
  settings = config.nirix.system;
  inherit (inputs.niri.lib.kdl) node plain leaf flag;
in
{
  config = lib.mkIf niri.enable {
    programs = {
      niri = {
        enable = true;
        package = pkgs.niri-stable;
      };
    };
    nixpkgs.overlays = [ inputs.niri.overlays.niri ];
    home-manager.sharedModules = [
      {
        programs.niri.settings = {
          binds = with inputs.niri.homeModules.config.lib.niri.actions; {
            "XF86AudioRaiseVolume".action = spawn [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1+" ];
            "XF86AudioLowerVolume".action = spawn [ "wpctl" "set-volume" "@DEFAULT_AUDIO_SINK@" "0.1-" ];
            "Mod+D".action = lib.mkIf settings.desktop_environment.walker.enable spawn [ "walker" ];
            "Mod+Escape".action = lib.mkIf settings.applications.hyprlock.enable spawn [ "hyprlock" ];
            "Mod+Shift+Escape".action = spawn [ "systemctl" "poweroff" ];
            "Mod+E".action = lib.mkIf (settings.applications.yazi.enable && settings.applications.ghostty.enable) spawn [ "ghostty" "-e" "yazi" ];
            "Mod+T".action = lib.mkIf settings.applications.ghostty.enable spawn [ "ghostty" ];
            "Mod+Q".action = close-window;
            "Mod+Left".action = focus-column-left;
            "Mod+Down".action = focus-window-down;
            "Mod+Up".action = focus-window-up;
            "Mod+Right".action = focus-column-right;
            "Mod+H".action = focus-column-left;
            "Mod+J".action = focus-window-down;
            "Mod+K".action = focus-window-up;
            "Mod+L".action = focus-column-right;
            "Mod+Ctrl+Left".action = move-column-left;
            "Mod+Ctrl+Down".action = move-window-down;
            "Mod+Ctrl+Up".action = move-window-up;
            "Mod+Ctrl+Right".action = move-column-right;
            "Mod+Ctrl+H".action = move-column-left;
            "Mod+Ctrl+J".action = move-window-down;
            "Mod+Ctrl+K".action = move-window-up;
            "Mod+Ctrl+L".action = move-column-right;
            "Mod+Home".action = focus-column-first;
            "Mod+End".action = focus-column-last;
            "Mod+Ctrl+Home".action = move-column-to-first;
            "Mod+Ctrl+End".action = move-column-to-last;
            "Mod+Shift+Left".action = focus-monitor-left;
            "Mod+Shift+Down".action = focus-monitor-down;
            "Mod+Shift+Up".action = focus-monitor-up;
            "Mod+Shift+Right".action = focus-monitor-right;
            "Mod+Shift+H".action = focus-monitor-left;
            "Mod+Shift+J".action = focus-monitor-down;
            "Mod+Shift+K".action = focus-monitor-up;
            "Mod+Shift+L".action = focus-monitor-right;
            "Mod+Shift+Ctrl+Left".action = move-column-to-monitor-left;
            "Mod+Shift+Ctrl+Down".action = move-column-to-monitor-down;
            "Mod+Shift+Ctrl+Up".action = move-column-to-monitor-up;
            "Mod+Shift+Ctrl+Right".action = move-column-to-monitor-right;
            "Mod+Shift+Ctrl+H".action = move-column-to-monitor-left;
            "Mod+Shift+Ctrl+J".action = move-column-to-monitor-down;
            "Mod+Shift+Ctrl+K".action = move-column-to-monitor-up;
            "Mod+Shift+Ctrl+L".action = move-column-to-monitor-right;
            "Mod+Page_Down".action = focus-workspace-down;
            "Mod+Page_Up".action = focus-workspace-up;
            "Mod+U".action = focus-workspace-down;
            "Mod+I".action = focus-workspace-up;
            "Mod+Ctrl+Page_Down".action = move-column-to-workspace-down;
            "Mod+Ctrl+Page_Up".action = move-column-to-workspace-up;
            "Mod+Ctrl+U".action = move-column-to-workspace-down;
            "Mod+Ctrl+I".action = move-column-to-workspace-up;
            "Mod+Shift+Page_Down".action = move-workspace-down;
            "Mod+Shift+Page_Up".action = move-workspace-up;
            "Mod+Shift+U".action = move-workspace-down;
            "Mod+Shift+I".action = move-workspace-up;
            "Mod+1".action.focus-workspace = 1;
            "Mod+2".action.focus-workspace = 2;
            "Mod+3".action.focus-workspace = 3;
            "Mod+4".action.focus-workspace = 4;
            "Mod+5".action.focus-workspace = 5;
            "Mod+6".action.focus-workspace = 6;
            "Mod+7".action.focus-workspace = 7;
            "Mod+8".action.focus-workspace = 8;
            "Mod+9".action.focus-workspace = 9;
            "Mod+Ctrl+1".action.move-column-to-workspace = 1;
            "Mod+Ctrl+2".action.move-column-to-workspace = 2;
            "Mod+Ctrl+3".action.move-column-to-workspace = 3;
            "Mod+Ctrl+4".action.move-column-to-workspace = 4;
            "Mod+Ctrl+5".action.move-column-to-workspace = 5;
            "Mod+Ctrl+6".action.move-column-to-workspace = 6;
            "Mod+Ctrl+7".action.move-column-to-workspace = 7;
            "Mod+Ctrl+8".action.move-column-to-workspace = 8;
            "Mod+Ctrl+9".action.move-column-to-workspace = 9;
            "Mod+Comma".action = consume-window-into-column;
            "Mod+Period".action = expel-window-from-column;
            "Mod+R".action = switch-preset-column-width;
            "Mod+F".action = maximize-column;
            "Mod+Shift+F".action = fullscreen-window;
            "Mod+C".action = center-column;
            "Mod+Minus".action = set-column-width "-10%";
            "Mod+Equal".action = set-column-width "+10%";
            "Mod+Shift+Minus".action = set-window-height "-10%";
            "Mod+Shift+Equal".action = set-window-height "+10%";
            "Print".action.screenshot = false;
            "Alt+Print".action.screenshot-window = false;
            "Mod+Shift+E".action = quit;
            "Mod+Shift+P".action = power-off-monitors;
          };
          hotkey-overlay = {
            skip-at-startup = true;
          };
          input = {
            keyboard = {
              xkb = {
                layout = settings.keyboard.layout;
                variant = settings.keyboard.variant;
              };
            };
            touchpad = {
              dwt = true;
              natural-scroll = true;
              tap = true;
            };
          };
          outputs = {
            "edp-1" = {
              background-color = settings.desktop_environment.theme.colors.compositor_background;
            };
          };
          prefer-no-csd = niri.prefer_no_csd;
          spawn-at-startup = [
            (lib.mkIf settings.desktop_environment.waybar.enable { command = [ "waybar" ]; })
          ];
        };
      }
    ];
  };
}
