{ config, home-manager, lib, pkgs, ... }:
let
  waybar = config.nirix.system.desktop_environment.waybar;
in
{
  config = lib.mkIf waybar.enable {
    home-manager.sharedModules = [
      {
        programs.waybar = {
          enable = waybar.enable;
          settings = {
            mainBar = {
              layer = "top";
              position = "top";
              height = 24;
              modules-right = [ "pulseaudio" "network" "bluetooth" "cpu" "memory" "battery" "tray" "clock" ];
              "tray" = {
                spacing = 10;
              };
              "cpu" = {
                format = "{usage}% ";
              };
              "memory" = {
                format = "{}% ";
              };
              "battery" = {
                bat = "BAT1";
                adapter = "AC";
                states = {
                  good = 85;
                  warning = 30;
                  critical = 15;
                };
                format = "{capacity}% {icon}";
                format-icons = [ "" "" "" "" "" ];
              };
              "network" = {
                format-wifi = "{essid} ({signalStrength}%) ";
                format-ethernet = "{ifname}: {ipaddr}/{cidr} ";
                format-disconnected = "Disconnected ⚠";
                on-click = "iwmenu -l walker";
              };
              "bluetooth" = {
                format = "{icon} {status}";
                format-icons = {
                  headphones = "";
                  hands-free = "";
                  headset = "";
                  phone = "";
                  portable = "";
                  car = "";
                  default = [ "" ];
                };
                on-click = "bzmenu -l walker";
              };
              "pulseaudio" = {
                format = "{volume}%  {icon}";
                format-bluetooth = "{volume}% {icon}";
                format-muted = "";
                format-icons = {
                  headphones = "";
                  hands-free = "";
                  headset = "";
                  phone = "";
                  portable = "";
                  car = "";
                  default = [ "" ];
                };
              };
            };
          };
          style = builtins.readFile ../../resources/waybar/style.css;
        };
      }
    ];
  };
}
